cask "firefox@nightly" do
  version "141.0a1,2025-06-05-04-07-37"

  language "ca" do
    sha256 "a6c3c1c97ac763afc68169bbdf26af8ab2c6e90e15194cbab4509b7de7598272"
    "ca"
  end
  language "cs" do
    sha256 "1328bdfe39283aec4b7ec3e851ea0b777f20ec2473006a886cf944d81fc84588"
    "cs"
  end
  language "de" do
    sha256 "f2f125ba66fb0b749a1c66967e34da7cf3b43114dc1c0d29dc816bbd3da058f8"
    "de"
  end
  language "en-CA" do
    sha256 "28ca3e0ab9d2a597c09f096033095db65b6f9d7162badb5e9f430f9813401f7a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0adb076349c4acd441a530790643491fede89c378e914eca88359a1497eb947d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "25691e3847271e48b78941814dfd32bbc448fe2bd1cfc50c8f993475cb241351"
    "en-US"
  end
  language "es" do
    sha256 "c61f415482820450e97ad7eee77fc7ff597fd84be5e4eb3f89bc97baadd9a818"
    "es-ES"
  end
  language "fr" do
    sha256 "5bdb4d32febb792d81c3b03a8645968ce272751fd7d90c30466d44985f56f723"
    "fr"
  end
  language "it" do
    sha256 "8f4515f5aa7582e5c177014c1d578db41bc7384388a3f575c7443aff94f184af"
    "it"
  end
  language "ja" do
    sha256 "b475719b52323d036fa9f170dfe8efd4712c4def54db93176afca6af4021d2f8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "25e474696270109c88005d1ccd097cf99440002d6f25c25ca8d445d67ecad8a3"
    "ko"
  end
  language "nl" do
    sha256 "40d13aa726727b50615bf25f9e3273a0826b49693609fab2c6150127d0311757"
    "nl"
  end
  language "pt-BR" do
    sha256 "ffbf1796cb7f704ab43b11bd9ead26155ca1ec2d8d6ada03444c22dc09feeb9e"
    "pt-BR"
  end
  language "ru" do
    sha256 "6750b8c717c0a818b2e894677118ad016510a36289da83bbb35a09a709db1a81"
    "ru"
  end
  language "uk" do
    sha256 "cb3ae8dc18212b90ebbdbf2e29fbcef2f90f50cc4e7882d0aca87de916c107f4"
    "uk"
  end
  language "zh-TW" do
    sha256 "bd1cb7dd07ea252c22125b16a58aefd5661ea4ae45bddbf02bcda7ffa0043c61"
    "zh-TW"
  end
  language "zh" do
    sha256 "80f11f92cdebad8a7ec2b292bf9f652471f0940742d1ac9d8cb77e4c7144ddd9"
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
