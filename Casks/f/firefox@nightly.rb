cask "firefox@nightly" do
  version "149.0a1,2026-02-18-04-45-52"

  language "ca" do
    sha256 "76d43fe37342c2ec467599c75a44024feec6c0f853ff9ebd88af91b4837c42a8"
    "ca"
  end
  language "cs" do
    sha256 "c1d48f9a4b83b0e27bb71c4fecb72d32df02b1c7fc9ed3f48334d197bbb8b79c"
    "cs"
  end
  language "de" do
    sha256 "331052a13bc926ea7c64450f7067b17e7d0e50227419d11ca68c041b58e1404e"
    "de"
  end
  language "en-CA" do
    sha256 "a7fc0343dc0f7a0b0c51b752944aa1a46c7f205ef19d0eb377cf777dffb31085"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b3a75e01ab2e5e8493161367e74f403149db58123cb819f353c43df778587117"
    "en-GB"
  end
  language "en", default: true do
    sha256 "435ea88f74c152bd4f9e7212a32b250a9b5e03cc18111d323b14552467c6ef43"
    "en-US"
  end
  language "es" do
    sha256 "939ff72081f89dc4dc427a71ee284557bc5a377f4468bbcf21c3274aed31b0b4"
    "es-ES"
  end
  language "fr" do
    sha256 "4217ad0b62e155360bf5c606e057b7c8c5ef6f9f293b0f867f2a4d982245e15b"
    "fr"
  end
  language "it" do
    sha256 "ab1c375bb22d26097fef77c6e624a6db80355f60eacc475e9f64b78b1bc3fc1c"
    "it"
  end
  language "ja" do
    sha256 "2a3214a91447b24b73af8c9bff49c7bc17b289e232a155942f33f6758cfd2d3c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "983937f359992e3f4a36125a408187f0222bec63e5f80c0930a05a5099985aec"
    "ko"
  end
  language "nl" do
    sha256 "df967d747d5c27dfe2de4e5aebdb889c4cc2d5e36b6531c99f5ef8f81aa41fd0"
    "nl"
  end
  language "pt-BR" do
    sha256 "8b7748c9c5cb9c8d57908f0bd17b2d7a1faec85f29cfae348e60bdfd7185f8b4"
    "pt-BR"
  end
  language "ru" do
    sha256 "7dcb23c96a45a84c6b0c792cbe9256f7a236b22de5654755554f7056b33cf729"
    "ru"
  end
  language "uk" do
    sha256 "ad40de278e39c1ad0f59bd308580c7f29fff84610558b07d34e15a1ce91d6d90"
    "uk"
  end
  language "zh-TW" do
    sha256 "5d6bc443291ebd7b1ad00b8ddd7e7cef1ceedc62e489de6c7adb1a763c91ebce"
    "zh-TW"
  end
  language "zh" do
    sha256 "7bf28e8537b2d63f7c4917c21f2fc0c5da7b0faeff4c78335a79ea163c6ce7b7"
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
