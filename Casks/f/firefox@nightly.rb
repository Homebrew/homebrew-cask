cask "firefox@nightly" do
  version "141.0a1,2025-05-31-20-59-18"

  language "ca" do
    sha256 "e5ce8d6b7f48132951580fdb152a2afc8ec97d99d0a01b5ad06283459696e488"
    "ca"
  end
  language "cs" do
    sha256 "19f89c08ff30224694bc1a76094234c689be1b7dfbd523bd6b99533db19dfcfa"
    "cs"
  end
  language "de" do
    sha256 "cf9f85949394a18aafe6c2057afe83423571fb6adf18f74c94b5d841097e1a13"
    "de"
  end
  language "en-CA" do
    sha256 "27056f57f064084b6f6b3335af37bc9270bfa0417f5816b829f11a29ccc2194d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1326d8a340429ba3019ad47deac5b72d2c042eff02a22b5568b408b03c7402fd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0b82333a052fe25bd7c3720f62f981b2e4026372076100c519241f0a31d33aa9"
    "en-US"
  end
  language "es" do
    sha256 "69bff31901324f6cf0cf0f275e5c4af8649de0dc1dec95c089b3f0bb4fef9abf"
    "es-ES"
  end
  language "fr" do
    sha256 "0215e8c84c570df04fc545bf78bd6e5820fa69c2b181e0facfa6a94e8f62a449"
    "fr"
  end
  language "it" do
    sha256 "615c267612d24d0d492a87bfe1e25b8685817e1b6141890c4ee39f91c8307ec0"
    "it"
  end
  language "ja" do
    sha256 "716edb9e83afc3946d46f3887bb8f0583371c08804dea17a8b7443e89688f0a0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2617450272dac91a7aebce54106db7a7b37070341fb380cac3b78392f367cc18"
    "ko"
  end
  language "nl" do
    sha256 "2659deeebaa0ab63cbf7b768624c67f465d71471a1032210ee5e2d22e5c378d6"
    "nl"
  end
  language "pt-BR" do
    sha256 "a37f128c1e36c45e2e055e581a7fc387bc2d561f9a844406a7baee841b418209"
    "pt-BR"
  end
  language "ru" do
    sha256 "8c814943b49d765cb0b3458eb869dfc6d10fb73d6951f63c06f887d36c68e785"
    "ru"
  end
  language "uk" do
    sha256 "bad58afda3f0360a826d5a81e21b30a740302da610ea3059f4c8bbd858172fa2"
    "uk"
  end
  language "zh-TW" do
    sha256 "435e27b6cdd12287438d1584e8e7719335cf5823d99b65c69ff2e4162a362f6c"
    "zh-TW"
  end
  language "zh" do
    sha256 "265c4026fc32f12d714bb32b3fda822d3cc95b2aa2118ca8fcab4aa7ae957b90"
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
