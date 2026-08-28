cask "firefox@nightly" do
  version "157.0a1,2026-08-28-09-42-33"

  language "ca" do
    sha256 "b38cd95ebbce6da7273d8041710e64b5b7376a2b997fc84e80df943d8b51a42e"
    "ca"
  end
  language "cs" do
    sha256 "6e986d182aed8e9e99084d0d7f20a5497e259a1845786e65f404b6090bbe59a9"
    "cs"
  end
  language "de" do
    sha256 "a764388f3b966c52fd76600d194ce5c00ec009cb711052a8ea5afd54867ec8dc"
    "de"
  end
  language "en-CA" do
    sha256 "92a4961e95753a5b51389aa6ca9d101152ccb974078eb8dc0a10186ebd37329b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "feda447ca75d308cc3ed86b1cb93aa40e9b691266a81f158a1c1b173f5820c75"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c4d1a9706c0dca0b06030f86950cb1cc6dd383ce66a5e91c383e61df0e69ee5c"
    "en-US"
  end
  language "es" do
    sha256 "5a44bc02c5953d461c507946fed0c21c914c5a6480e19878accb94ebabc28bf0"
    "es-ES"
  end
  language "fr" do
    sha256 "2c502e33a556fb5f4735a3229391771842b918a0684dd2cdb246322b3a9809d2"
    "fr"
  end
  language "it" do
    sha256 "6e3dd7b5912b207381e8a7847e72f4813348f5ea1b678adc1207404217490d56"
    "it"
  end
  language "ja" do
    sha256 "509e868868bc24c4310d511d0a4fdbee1f793adbcb3ab41c1190bdb2e9de5d9f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3898716230fa795ba7f23550c772d7f50a61cd42b99fc4a3760c0465529c9ce6"
    "ko"
  end
  language "nl" do
    sha256 "83bd48d0b15cc95dee6a285275723e643ccef0786adc8d591896dfe8df80ca72"
    "nl"
  end
  language "pt-BR" do
    sha256 "ddba59d7b29da4b2a893e87b74817937bf176b0e0f439c8ddb97762ca6903d25"
    "pt-BR"
  end
  language "ru" do
    sha256 "96ad6ade95444764d3120223476d02fa5ba4512967c7d0c82fc74e02b5d4b8ae"
    "ru"
  end
  language "uk" do
    sha256 "054c149ad6d2139a034b2dd11d76d3d99d11939e7306f8e459f771e412d5bc76"
    "uk"
  end
  language "zh-TW" do
    sha256 "f6e1ca52cdf30fff6893bda7eb548b2e9aa9a8442769e0d67be1611641fb86a2"
    "zh-TW"
  end
  language "zh" do
    sha256 "0e55148d5ffda14bdcf831ab42b14bfdf81c38b473dbebea0663dc43c96cf1de"
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
