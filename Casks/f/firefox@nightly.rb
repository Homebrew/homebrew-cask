cask "firefox@nightly" do
  version "142.0a1,2025-07-04-09-11-29"

  language "ca" do
    sha256 "7dfcd5c7172ae35eb378c51ad241a9f11995578160be83593c9633b794f2f56f"
    "ca"
  end
  language "cs" do
    sha256 "8367156fbb56dc8300688d9a0dea8b0f4d801b114916fd8fcd1d148f0cbb64b3"
    "cs"
  end
  language "de" do
    sha256 "eb442e8d7131c68d19721113026af46211759a558b999dcf56c2201f1f29a5c0"
    "de"
  end
  language "en-CA" do
    sha256 "6940feda3acedda19bb324177607d73745e7a2e60869d682b71aa5091541c33e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2cc3e7997202958cc6ec0426f564292d5a3382b0a01f63f026d50b6845e1b262"
    "en-GB"
  end
  language "en", default: true do
    sha256 "181162eb5457c672adfe7ad13567cf3a81266815614677e5a7c156b57bbf5bab"
    "en-US"
  end
  language "es" do
    sha256 "2513925b541edb0f8d8f685e074cfb7c9ec3496d7ca334d3ef5ef63918e52858"
    "es-ES"
  end
  language "fr" do
    sha256 "05f2058c889dd5bbe5221ca51ba59efd0657be4e14fc46a506e4d90c0d43756a"
    "fr"
  end
  language "it" do
    sha256 "11af6cc6434beb33e6cb138e478243d55da6e60e24305379654cb9d6062e42d7"
    "it"
  end
  language "ja" do
    sha256 "c7e24d2c4bf43d20526a670e56cb42dd0447b415b9e90e5de2e8cf5fe43e2b69"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4acd82be3fefba5d17797cb4ab50e4fbf10756582fa726aa27f20b8bc93501b4"
    "ko"
  end
  language "nl" do
    sha256 "57ca06f003e815ca8f8559e5a83d4ad5b77b597358544356ed6773d4f0674be4"
    "nl"
  end
  language "pt-BR" do
    sha256 "5065bca299e8dd6f33b91d19193cac8b264d85842330586b828666a32954e4b4"
    "pt-BR"
  end
  language "ru" do
    sha256 "eef2cb6636e674d9b339843433d55f433110287868289293f5fdfe01e6ef0f41"
    "ru"
  end
  language "uk" do
    sha256 "1952536032262573585e8494801092643fbe2f2c59df80eee99ce2e72ba917a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "1896ac3249fd055aa8ee4f024c6168e5bb384ecea049d4df157ca6899189b9b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "639cd8df8a264b84a6b8d4b076b01fec1e465806a3fdf768a1fa2582013e195f"
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
