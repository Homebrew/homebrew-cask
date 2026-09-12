cask "tencent-yingyongbao" do
  version "0.8.0.2140,mLZ4QkeD0apbbZ4T"
  sha256 "881f7371d754ad58c2f3ba74ee2bd3e6057b141758c1b78b8cbf62885c88e06a"

  url "https://downmac.yyb.qq.com/channel/formal/raw/#{version.csv.second}/mac_yyb_#{version.csv.first}.dmg"
  name "腾讯应用宝"
  desc "Tencent application store"
  homepage "https://sj.qq.com/download/macbrand"

  livecheck do
    url "https://sj.qq.com/download/macbrand"
    strategy :page_match do |page|
      require "digest"
      require "json"

      # Step 1: read the access key from the page's `__NEXT_DATA__` payload.
      access_key = page[/"macServiceAccessKey":"([^"]+)"/, 1]
      next if access_key.blank?

      # Step 2: build a signature over the body, timestamp and nonce.
      payload = { pkg_name: "", supply_id: 2_100_200_129 }
      timestamp = (Time.now.to_f * 1000).to_i.to_s
      nonce = rand(10_000).to_s
      signature = Digest::MD5.hexdigest(
        "#{JSON.generate(payload)}#{timestamp}#{access_key}#{nonce}",
      )

      # Step 3: request the version endpoint with the signature.
      options = Homebrew::Livecheck::Options.new(
        post_json: payload,
        header:    [
          "businessid: yybmac",
          "Ual-Access-Businessid: yybmac",
          "Ual-Access-Nonce: #{nonce}",
          "Ual-Access-Signature: #{signature}",
          "Ual-Access-Timestamp: #{timestamp}",
        ],
      )
      content = Homebrew::Livecheck::Strategy.page_content(
        "https://yybadaccess.3g.qq.com/v3/yybmac_deliver", options:
      )[:content]
      next if content.blank?

      data = begin
        JSON.parse(content)["data"]
      rescue JSON::ParserError
        nil
      end
      next if data.blank?

      # The channel ID in the download URL changes with every release, so it
      # has to be tracked alongside the version.
      channel = data["download_url"].to_s[%r{/raw/([^/]+)/}, 1]
      next if channel.blank?

      "#{data["version"]},#{channel}"
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "YYBMacApp.app"

  zap trash: [
    "~/Library/Application Support/com.tencent.yybmac",
    "~/Library/Application Support/com.tencent.yybmac.engine",
    "~/Library/Application Support/com.tencent.yybmac.wine.engine",
    "~/Library/Logs/com.tencent.yybmac",
  ]
end
