cask "firefox@nightly" do
  version "141.0a1,2025-06-12-10-40-24"

  language "ca" do
    sha256 "0e290e5f2e4b0d093ecf67c1a40791f0746ecd6a42ae9585ee2784e55f7aefd6"
    "ca"
  end
  language "cs" do
    sha256 "fc5f94f8372fd3675f63c4e840d5bf6ab8d09d950885ab5eef66d1a6ecf51b37"
    "cs"
  end
  language "de" do
    sha256 "452d969141a7483a1551af7512686d804d698c47c97f28cb96b671c4f7263d52"
    "de"
  end
  language "en-CA" do
    sha256 "d420ad0d7daff6f03751dd131384246fdd042d531f3e0ed2262196291cc8bac1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9d31ec24b4b58656e978ec7aabfac9cda6cb554e08638d34819538c9dfb92451"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6ef47bfc40aaa95b6fa1acddfc00b6a7135c6bff29bc94536a9f79ed77b2e04e"
    "en-US"
  end
  language "es" do
    sha256 "191f487a73a56291f47c163e87db96edb2b62f3ceef625c5325dc01cf6fec650"
    "es-ES"
  end
  language "fr" do
    sha256 "137c8aa826956c28d6377d68ad7e546a62c6d002731c5137abf236d53ae28867"
    "fr"
  end
  language "it" do
    sha256 "9df9f4fc80e0a905b0f2cd4af235be996164b328243ff37568ae1c960497d5c7"
    "it"
  end
  language "ja" do
    sha256 "88fff9d49a4e7aefdfc3cee0be16cf10bb2a01ddbbd946070c845600e194aee0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b159b7b275e91f9600e2a1b9a0207d0a629ee79bb52faff5fb6503a76839921f"
    "ko"
  end
  language "nl" do
    sha256 "549e73da5d60397ebc72039d8cff20dace3b3731e4eff21bd31e82ac6bc29ffc"
    "nl"
  end
  language "pt-BR" do
    sha256 "8a2106db238daf36f27124e46861e3b778dfa88d10c29f101e3563200248aabd"
    "pt-BR"
  end
  language "ru" do
    sha256 "e4412977c0465ac8f41119a7e9a756ec1a85079fd40a81dc9916d7a80d72c78b"
    "ru"
  end
  language "uk" do
    sha256 "94f70d683ee0c1b5b0cc9ad996101dc7b84cf905a6b62465e3998fcc58d92759"
    "uk"
  end
  language "zh-TW" do
    sha256 "14310813e6c1ebc143e3e4e08195d29d395636bda4343dfa39c04c134219177a"
    "zh-TW"
  end
  language "zh" do
    sha256 "fc333b6bace160779febc0df0767326604617766f0db5d03f1b7826fd6b58d8e"
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
  depends_on macos: ">= :catalina"

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
