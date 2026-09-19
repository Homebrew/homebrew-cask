cask "tencent-yingyongbao" do
  version "0.8.1.2162,v86aPbKEPoXhM6CV"
  sha256 "749d3bae14f36bd7256e22bb81e0403402e4052122fd77d6657cf7b0ce3af0d6"

  url "https://downmac.yyb.qq.com/channel/formal/raw/#{version.csv.second}/mac_yyb_#{version.csv.first}.dmg"
  name "腾讯应用宝"
  desc "Tencent application store"
  homepage "https://sj.qq.com/download/macbrand"

  livecheck do
    url "https://sj.qq.com/download/macbrand"
    strategy :page_match do |page|
      require "digest"

      # Read the access key from the page's `__NEXT_DATA__` JSON
      access_key = page[/["']macServiceAccessKey["']:\s*["']([^"']+)["']/im, 1]
      next unless access_key

      # Build a signature over the body, timestamp and nonce
      payload = { pkg_name: "", supply_id: 2_100_200_129 }
      timestamp = (Time.now.to_f * 1000).to_i.to_s
      nonce = rand(10_000).to_s
      signature = Digest::MD5.hexdigest(
        "#{JSON.generate(payload)}#{timestamp}#{access_key}#{nonce}",
      )

      # Request the version endpoint with the signature
      content = Homebrew::Livecheck::Strategy.page_content(
        "https://yybadaccess.3g.qq.com/v3/yybmac_deliver",
        options: Homebrew::Livecheck::Options.new(
          post_json: payload,
          header:    [
            "businessid: yybmac",
            "Ual-Access-Businessid: yybmac",
            "Ual-Access-Nonce: #{nonce}",
            "Ual-Access-Signature: #{signature}",
            "Ual-Access-Timestamp: #{timestamp}",
          ],
        ),
      )[:content]
      next if content.blank?

      data = Homebrew::Livecheck::Strategy::Json.parse_json(content)["data"]
      next if data.blank? || (ver = data["version"]).blank?

      # The channel ID in the download URL changes with every release, so it
      # has to be tracked alongside the version
      channel = data["download_url"]&.[](%r{/raw/([^/]+)/}, 1)
      next if channel.blank?

      "#{ver},#{channel}"
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "YYBMacApp.app"

  uninstall launchctl: "com.tencent.yybmac.yybService"

  zap trash: [
    "~/Library/Application Support/com.tencent.yybmac",
    "~/Library/Application Support/com.tencent.yybmac.engine",
    "~/Library/Application Support/com.tencent.yybmac.wine.engine",
    "~/Library/Caches/com.tencent.yybmac",
    "~/Library/com.tencent.yybmac",
    "~/Library/Containers/com.tencent.yybmac",
    "~/Library/HTTPStorages/com.tencent.yybmac*",
    "~/Library/Logs/com.tencent.yybmac",
    "~/Library/Preferences/com.tencent.yybmac.plist",
    "~/Library/WebKit/com.tencent.yybmac",
  ]
end
