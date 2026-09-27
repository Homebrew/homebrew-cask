cask "firefox@nightly" do
  version "159.0a1,2026-09-27-09-35-27"

  language "ca" do
    sha256 "58a29ba1ac4a815990af5475e346540175e8dfd96ecf3fc34222c3c4aad7e6d9"
    "ca"
  end
  language "cs" do
    sha256 "8e1128595c136062b639fd85aa0bf03943aaacff57abb82e53ef5f0ca40f1451"
    "cs"
  end
  language "de" do
    sha256 "3e66c4fe929a7e795e4796d4dbf7f935e7a3484827df783105d4482195f881e0"
    "de"
  end
  language "en-CA" do
    sha256 "914a41aef91fcdbaf7657d2d88d59d2427b046c2eca7ba2bf63ceec14022733a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b402272b0521d77cbafc583561e18514206bdd34c0d346335b893d0dd1be4784"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f75fe3f327c275740d76e4f9a856362c26901a6e0bf802209b6046482f5bba29"
    "en-US"
  end
  language "es" do
    sha256 "f18e172c305062bef143bf0c0f7541cc7ab7b8ca9d1ac7f5ecb48f076807ce2b"
    "es-ES"
  end
  language "fr" do
    sha256 "2f1e0a526c5c6aa858e0edb524838a578af98e7fa2cac9eaae076392f7407718"
    "fr"
  end
  language "it" do
    sha256 "2d7fc4cf9c6c44347a8dcccd294d2cc6cb09c9d3b891861d01b31d502f55b071"
    "it"
  end
  language "ja" do
    sha256 "66b56f34a297dcbfaf36f171d318c6193e3a90633cff2439ea80c4ae90567720"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4493d76e50d09ffb646dd5d95a4a13393b714b03e08df72b595bb8dc4f5ff725"
    "ko"
  end
  language "nl" do
    sha256 "3b81afc2958a01a8b83cc70214d4ea101dacb1cd669c1be53222a3e405873390"
    "nl"
  end
  language "pt-BR" do
    sha256 "990c27eb8028dc023e372cda82ac9f1c271e1bde9019d8fa1e591f0b80dda9a0"
    "pt-BR"
  end
  language "ru" do
    sha256 "61a0165ccd0242c155ec01c72f8bc21bea33a6534b1af2df9ea8fac2727468f6"
    "ru"
  end
  language "uk" do
    sha256 "52f70b39f96a379f64cf39c234780af192615c2fbbbe2151444670e468d9f80f"
    "uk"
  end
  language "zh-TW" do
    sha256 "b8fdec7ab85bd8416473bfbcb6d27bee5c17669c239aa51eba20a4f53b9d2e09"
    "zh-TW"
  end
  language "zh" do
    sha256 "ddba84c412fca8a50992f7003f045ffe39be4369ebfc43bfcf1fbe133db49a88"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
