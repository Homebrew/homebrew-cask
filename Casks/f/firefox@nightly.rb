cask "firefox@nightly" do
  version "150.0a1,2026-03-09-09-29-03"

  language "ca" do
    sha256 "3e03a60f4b0652f59ef49bcdbd2904b3f6e2bf373aff6ac75d9656c39121ca0b"
    "ca"
  end
  language "cs" do
    sha256 "c688a01a6f196981f1738572a18e1f5ceebb9b38fa6e85fbef5699ca1cab643c"
    "cs"
  end
  language "de" do
    sha256 "d1f1db0e066a45c0a6f3264e36f60a5e8dddbce79245fde6e3cd436bc03594c7"
    "de"
  end
  language "en-CA" do
    sha256 "110fe93942f681d9154e4b707bdf1944842d67afb72fb5e7e6cc3c002758fee9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "636ee6668f798a18c8f92a25cfc0a22f7625bda0784c6d0fe1805fc1b6a459e6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "88c8e3b32ea9e328e17e21a0b36f9274be97f764d86d320f90a91edd1fbdf5b8"
    "en-US"
  end
  language "es" do
    sha256 "7dd614eaf7a32bab7a3684dab42ca94b0ac4721a08ff3c732726484f53829c57"
    "es-ES"
  end
  language "fr" do
    sha256 "b019cb12108215e067048ea2419b381db14774a6fbc14a6d45981b8ec27d41c1"
    "fr"
  end
  language "it" do
    sha256 "2552f94a6bc24946410cef7f7eb0a068acbd6859c91e35cce08502e841d57eaf"
    "it"
  end
  language "ja" do
    sha256 "fe2168dce1fecbdc214a24565807d35f36ada4e2cf8260479575ca313058f369"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1c1dcfc5ce50d9002392927196f6d53824c7d61306982194d16415bad8e2482a"
    "ko"
  end
  language "nl" do
    sha256 "1d1ae9511e9c4482cd27668fb8c4e32e7e93a70dd1508aa0115c69ca1d0edb26"
    "nl"
  end
  language "pt-BR" do
    sha256 "f5322d434b23efd21c9cb13e109f5e6408bacb5935d4ce17c1c7d0003fddc937"
    "pt-BR"
  end
  language "ru" do
    sha256 "55e57a11c51adeb54f086757c11688246ff454bd0fde42ac1760ec8417de6069"
    "ru"
  end
  language "uk" do
    sha256 "bd70cb101f02cc90d594c5e77730a08ad0455c5a66872bd5e8aa9f363c8e6202"
    "uk"
  end
  language "zh-TW" do
    sha256 "bd5301a3978ba8834009a1a5e379a21e318637fed75d99a19e4b71ea2030bcbf"
    "zh-TW"
  end
  language "zh" do
    sha256 "4da3b890d434e5b1a268fbebe3e13fde94acfa8d2c4e2dce9a770ece6ee257af"
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
