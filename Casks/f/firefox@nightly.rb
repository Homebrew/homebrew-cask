cask "firefox@nightly" do
  version "159.0a1,2026-09-29-21-48-46"

  language "ca" do
    sha256 "ffbfbf6496762f0d0770cd86fda7010c437e3dbe7924e7149fbafe90ac2d400c"
    "ca"
  end
  language "cs" do
    sha256 "2a3e6956a8941e4276ea491ee6ed1c0ba5dd35b1b5cafb12f409634c08033432"
    "cs"
  end
  language "de" do
    sha256 "5c3d23c5f326543af4776faa8eb0c4248de8ffcc1d0c6fa588d86a713d960af8"
    "de"
  end
  language "en-CA" do
    sha256 "a9875711364beb1bd641c4c469d2268f90375547db28d7979ded48c3fd445ebb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b23fe9d443bcbf436d302807fdfbf4be0f8c60ee4ff0af47326760087972a28a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bf6bf3e645b07eab6c30de76d3f858b7a5768dbbea99bb4a9bdaebdbe9756679"
    "en-US"
  end
  language "es" do
    sha256 "a7e03e1ed155563ee8f223f6bb5d3fb545ac504aa3a1b59626d158901e8c783b"
    "es-ES"
  end
  language "fr" do
    sha256 "7d09558b6078028ce2eced653971417e0e69e3adc5cbbcbbaaf74594f9c59207"
    "fr"
  end
  language "it" do
    sha256 "6e8737815e639b8725bfd0fd6100038b2d91feb3e1dd9be2cbf1e4bc121dcdff"
    "it"
  end
  language "ja" do
    sha256 "6c9162c4e2c16a37a047bba4c017e57d1742a9b184fbd76f59c581411f917b3e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a2ecad798de9551643235f68119c5d597125a8aadcb048d95bd74ee47e92b3f5"
    "ko"
  end
  language "nl" do
    sha256 "19f6a152ca842fc47a520e35ad8762d75ee7059e94e720262600ee2e2326f5ad"
    "nl"
  end
  language "pt-BR" do
    sha256 "c0aea998c54b1c570310844dcedbf71b7a052684a2bc98d4d9374d1158f65ed0"
    "pt-BR"
  end
  language "ru" do
    sha256 "8690594a0146b6b545fe795d99e9ee06f6bae7f31458077cdedb7a069523d09e"
    "ru"
  end
  language "uk" do
    sha256 "cdac438089ff295a64ae17e033b6c833b7df3cb1d92a9a47e4ae757c6643d5a1"
    "uk"
  end
  language "zh-TW" do
    sha256 "3e20821c6dda55069a10a2ed7d3ccb17b9b478a5dcd1ed1856e851c0f3217723"
    "zh-TW"
  end
  language "zh" do
    sha256 "b152559fae51147e7bbd8510568946f5a076cb8fccb9bbc8848184ef1981d4cc"
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
