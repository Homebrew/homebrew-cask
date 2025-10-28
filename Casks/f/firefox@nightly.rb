cask "firefox@nightly" do
  version "146.0a1,2025-10-28-04-18-39"

  language "ca" do
    sha256 "3b7f3fe0a2fed4f538d0c0ab15c70709a60d0729029f84976ec2571e94c1b267"
    "ca"
  end
  language "cs" do
    sha256 "c59505466704643e9c4d921908c663c04857317cad26b0257f56e144c4fbde95"
    "cs"
  end
  language "de" do
    sha256 "1330c8f6800742ee74d09dcaf6068688317f440fc7338520546a24e41372b1df"
    "de"
  end
  language "en-CA" do
    sha256 "311447e38fd95a47cc09ad00fa1286d31df4e58b6b9b1a31c26447363f22ac26"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0d1ab00490f12e175b7a486e149481fdb9f12f9ccfbf7352af2ad83b72d31b92"
    "en-GB"
  end
  language "en", default: true do
    sha256 "112b30b980ec10920df73a949e0950e979a501d4e491bb36c24ae7318343d9b5"
    "en-US"
  end
  language "es" do
    sha256 "78d9a687796877f332ded2925ecdc21058563c41ffa97b53cf09cc5a55c87f23"
    "es-ES"
  end
  language "fr" do
    sha256 "824fb439d067aad66d01e1178fc7f358b7a246d9f52012aad6e4d57eae64f9e4"
    "fr"
  end
  language "it" do
    sha256 "bcce04c24ce08b940296805e82889cdb60491221802e13143a287e5098379cf6"
    "it"
  end
  language "ja" do
    sha256 "e67b7570b8f76fa94edd17bd4ab76e6dfcc867d7e1d4b08d2e73cc453448dd1a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9693f89e624c9e844dfb7b9d9e0cec12241ff00d7cb8a9482cce53d6269ec471"
    "ko"
  end
  language "nl" do
    sha256 "c7f8890284882eb2c7d73b5b4523f618450897e72d62984d3ed82f19d82a401a"
    "nl"
  end
  language "pt-BR" do
    sha256 "b96df6c1f838bb40119830da82fc0eb1f81c140ac332f5063f11b6cda55787d6"
    "pt-BR"
  end
  language "ru" do
    sha256 "679851c18f6a0c9368f4842a2255d166f5c12ba855248e49532d03492ff68417"
    "ru"
  end
  language "uk" do
    sha256 "819dfc6b4cbf8843932256d819c17f84eb46efefe6076d936160d970d44c4a05"
    "uk"
  end
  language "zh-TW" do
    sha256 "553ae311c1762999411f43879107c0e6d85a56150f79de9166671e9cc371541a"
    "zh-TW"
  end
  language "zh" do
    sha256 "9bcf34f127953d4ba00be4afbe1212130a6bb76b0710cebac96cd7aa6689ad77"
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
