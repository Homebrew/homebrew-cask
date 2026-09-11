cask "tencent-yingyongbao" do
  version "0.8.0.2140,mLZ4QkeD0apbbZ4T"
  sha256 "881f7371d754ad58c2f3ba74ee2bd3e6057b141758c1b78b8cbf62885c88e06a"

  url "https://downmac.yyb.qq.com/channel/formal/raw/#{version.csv.second}/mac_yyb_#{version.csv.first}.dmg"
  name "腾讯应用宝"
  desc "Tencent application store"
  homepage "https://sj.qq.com/download/macbrand"

  livecheck do
    require "json"
    require "digest"

    # Step 1: read the access key from the public page (a field in the
    # `__NEXT_DATA__` SSR payload).
    page = Homebrew::Livecheck::Strategy.page_content("https://sj.qq.com/download/macbrand")[:content]
    ak   = page[/"macServiceAccessKey":"([^"]+)"/, 1]
    biz  = "yybmac"

    # Step 2: build the signature.
    payload = { pkg_name: "", supply_id: 2_100_200_129 }
    body    = JSON.generate(payload)
    ts      = (Time.now.to_f * 1000).to_i.to_s
    nonce   = rand(10_000).to_s
    sig     = Digest::MD5.hexdigest(body + ts + ak.to_s + nonce)

    # Step 3: request the version endpoint with the signature.
    url "https://yybadaccess.3g.qq.com/v3/yybmac_deliver",
        post_json: payload,
        header:    ["businessid: #{biz}",
                    "Ual-Access-Businessid: #{biz}",
                    "Ual-Access-Nonce: #{nonce}",
                    "Ual-Access-Signature: #{sig}",
                    "Ual-Access-Timestamp: #{ts}"]

    # The channel ID in the download URL changes with every release, so it has
    # to be tracked alongside the version.
    strategy :json do |json|
      data = json["data"]
      next if data.blank?

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
