cask "firefox@nightly" do
  version "160.0a1,2026-10-18-21-18-30"

  language "ca" do
    sha256 "e37b8e53ac948f4c420d66a208340fb727897e761b6dbbb3a6795bcae0dbc7bf"
    "ca"
  end
  language "cs" do
    sha256 "2fa67173d1dfb5939664f685becfac1fab091e7fa4b2715ff8b7229da0c79632"
    "cs"
  end
  language "de" do
    sha256 "a4436fcbc5b25357c171c15453e7f36e9b56c9533cf167c58db8c7eb19b3546e"
    "de"
  end
  language "en-CA" do
    sha256 "76f128060c2fa4c3d51835a6ea7fc51f6c83593d9a2f1db4d8c0ac64c7a1cbc7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "434368223d719d314af7289e943ebd5da9ebfd5822a03e6257009759b6f5ff6e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "12521fb4a9ca97b78be048028f499395e3d41b5a05a76b796ce37482b9610b97"
    "en-US"
  end
  language "es" do
    sha256 "79a4568a9dce40937759b0f5ca383e536d2e3db1f7cdbee6975ae305d12e2dc1"
    "es-ES"
  end
  language "fr" do
    sha256 "a121602858bbba5b90396eb32a13c4a51319d56e005607f8d19f47ed3e0b2b5e"
    "fr"
  end
  language "it" do
    sha256 "a76362eeb1bbe7378071313523330bfcd0bfd72e3aaf11b0e5e87693fc41179e"
    "it"
  end
  language "ja" do
    sha256 "2466719942fffa27ee671bf484475a9a356e670daae5044312566185607a03b1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "de0975b1f4881bb46fc578296fb94e6b8c48f35febca5344161f46be4d56da24"
    "ko"
  end
  language "nl" do
    sha256 "e9591c7b541ab03bdc9ffc2ddbeaac2de2c2bca49486a4870eaba07723ce8b9c"
    "nl"
  end
  language "pt-BR" do
    sha256 "93a376cc96abc7b737fcb4e8a73fa28178d006d454259734c0be558b98e10408"
    "pt-BR"
  end
  language "ru" do
    sha256 "bc4a7f8ff29d6c3323d378f2b9b80261966accbc5bc213c2228c9ef93feb2b22"
    "ru"
  end
  language "uk" do
    sha256 "a94a44a985820d73b674c64ab98fac72821b2cc5f8fd9b06348ace8667b703bf"
    "uk"
  end
  language "zh-TW" do
    sha256 "50262269132738e722355088e28ec619667037428680411fc68e94ad75a2516c"
    "zh-TW"
  end
  language "zh" do
    sha256 "3f65cef7b24d3759454b0036d72c5f8a1c2a99cf8457bc4616d05e8b2b0c2dd0"
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
