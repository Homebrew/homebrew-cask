cask "firefox@nightly" do
  version "147.0a1,2025-11-24-21-46-25"

  language "ca" do
    sha256 "469fb27d147f0c3af836f1c05c2b758e70dc1dfc2ed6205d82d4d9d86d44a6ae"
    "ca"
  end
  language "cs" do
    sha256 "475a046062ffe50567051daf680138b0d1881ef890c81765489b736e5b5a0585"
    "cs"
  end
  language "de" do
    sha256 "d154897505b11c94f7d322f85108a1db163e0707d1fdc3a5e3527007a26c1fe2"
    "de"
  end
  language "en-CA" do
    sha256 "41feeaada3677637c1623c58ff6b4250ebf0039db8a1469afcdd90d78905edd7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a816d414f4569c335d408e6be2fede9ce78d41412adab3256de6dea050c067ac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b444382461bb67b709fdc3b4f6b48f68368a78c0f69fa05b996bcb494393fa9f"
    "en-US"
  end
  language "es" do
    sha256 "3859aaea591422f77293d0612cb0c367fbd83d4daeba17a375291b8b9710c09c"
    "es-ES"
  end
  language "fr" do
    sha256 "19a0017d9cef103bcbe705ad00b10760df409195ba08bb9feeecd37700427cc4"
    "fr"
  end
  language "it" do
    sha256 "23de6edb620b912514fe8e892bc38dd11fe5255974ce3ba2959eb359372b2586"
    "it"
  end
  language "ja" do
    sha256 "2eb4ebcd0bb9bdae0f45997521bfaf52d00e609c82891cb2f1e984c5dd722dec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "090063f413d53df9e434c47ff31c858289ad28d3c8bb34c1b7af9ceac14ab2fc"
    "ko"
  end
  language "nl" do
    sha256 "b91ff1a05013d6a4bd91e06da303147f230fce22e2327ff8079eacd58afc47f3"
    "nl"
  end
  language "pt-BR" do
    sha256 "e8bf4e75e01743fa1b67c479a1c1c91d376172b9d2995d747b9a708a11e210f5"
    "pt-BR"
  end
  language "ru" do
    sha256 "829644e12b19bc35d17a4fc5ebc3dbeaf3df68b4f04ea16f2425c4af9df92f9b"
    "ru"
  end
  language "uk" do
    sha256 "7589b29854597dac73bfad48696acb24861e391bd2eaf8f5f7d096287604c95e"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f9abc8b131c4b965ef39a0dca186757b19e31094f857359515b959fbaf57490"
    "zh-TW"
  end
  language "zh" do
    sha256 "30dd48197b47d88b2de386b5e3036f4f0e1f57b014fc9f4c8f5bac8b7f660f6c"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
