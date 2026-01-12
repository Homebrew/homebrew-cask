cask "firefox@nightly" do
  version "148.0a1,2026-01-11-21-42-32"

  language "ca" do
    sha256 "0432044cf7ce30cd70e9d94fb15e76f339233a3386b48939e665abad3f53d189"
    "ca"
  end
  language "cs" do
    sha256 "1146c46dab9fda1249eb5a5694c12b59c30ebe0b39fe359967be79eac734bd19"
    "cs"
  end
  language "de" do
    sha256 "5249ce839be644db022f34bf539b2fddb6611336771d755c2b450d77c9bef42d"
    "de"
  end
  language "en-CA" do
    sha256 "b94eda73f1f17f98e3272f3dda8a60eb55b5b75b84192937f72002f714c7467f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a411c5f9a604effa26e434f6d5089397298fc701edabd20a3a4301913d7f4955"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d86ff00ed157a61c2ab156d39d7292235a39e5ec41f8dcf6b5351a514888a61d"
    "en-US"
  end
  language "es" do
    sha256 "abf520b1bf4968914a6b9ab15b9fbac80a8226d178c55ea216d62cc4c1624598"
    "es-ES"
  end
  language "fr" do
    sha256 "17c91173cee60b22093912ef9b0ac5c45c73958379efcb10efe110e10c4b7c37"
    "fr"
  end
  language "it" do
    sha256 "4193b7f202f156d73a8f5eb95d5e76a2eedebd5b3c4f9905b51d7a4f2ddb9271"
    "it"
  end
  language "ja" do
    sha256 "415e83142c4916a300d6d556a340b0f80d2033fc3940f432e21436a12bcf8f07"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7e8702a50d98355371bb5634fdb8fd531fc52dbeaeca2bdda270415b32a31c3a"
    "ko"
  end
  language "nl" do
    sha256 "c3422000c83dd8a6f11ba2fc4df9f54e92c126e415399dee5cfce14d521bb81a"
    "nl"
  end
  language "pt-BR" do
    sha256 "0c0202e258ccbe50aeb1ebb154678b7c689af3741ed2ee9d32e6f4b05aec4eae"
    "pt-BR"
  end
  language "ru" do
    sha256 "f293b99e848a310f6954288449d4b4822bdfa9d69e8e782efbe994f2cc6c3880"
    "ru"
  end
  language "uk" do
    sha256 "7cc8c344767038d059f92168d8e0c85e55ffd0d08989d8dfa870e827677d7c9a"
    "uk"
  end
  language "zh-TW" do
    sha256 "bcca8d0658de36a8ca92a284b49e3283263e12a079b540cdde8c9ee124d7dfda"
    "zh-TW"
  end
  language "zh" do
    sha256 "1b734bad831db3e96684c24f514ebdddcbbf591e2c00cbaee9f570653bb076d7"
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
