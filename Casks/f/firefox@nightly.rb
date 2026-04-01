cask "firefox@nightly" do
  version "151.0a1,2026-04-01-09-43-41"

  language "ca" do
    sha256 "6a1edcb036f3ef5ae9567917f5ea19bcd5473c1434372a68f3d183c9665af508"
    "ca"
  end
  language "cs" do
    sha256 "6aff149f39b909bc0b08811a9d5c310405c4c71d4b1888ed57a23e4aaecdb2c8"
    "cs"
  end
  language "de" do
    sha256 "a6ebd06bcf5ce47f5729a1c0ca8e5fac762b8fcb11ebfb527f97ee356cc0d812"
    "de"
  end
  language "en-CA" do
    sha256 "7141166a009fd5749bf6c831729de490dc72e7836454a6d571dcbb8b1d44b7bd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c7391b7ea5210e975523e91042fde55c88d97291d1f9be37432c2d6266633271"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6df29827f3afe206b1accced0aab4e1aa2cbfc91adb5c640f4a09f2a61d2ab92"
    "en-US"
  end
  language "es" do
    sha256 "0cd11c4ad14e1c6a5c302fae7da2ec0b1b749ebcdd8de62766c34ea0c6f4660b"
    "es-ES"
  end
  language "fr" do
    sha256 "13737c98076b6a1a1f3eb4bc4cef73929804acdd74b3137dd0f8279c565b271a"
    "fr"
  end
  language "it" do
    sha256 "6209e8e03265dbde97f80ad92a4638ff34b3ed5fc7b806cc46161c39b245f797"
    "it"
  end
  language "ja" do
    sha256 "0986180b2d803f921c1b0cc64e9f53019aac2fff67639ce9426332b80eb9976b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "08d6399fe903c90dd3993625270ed829a5112135e41b02fd8e300320c8b8cd5a"
    "ko"
  end
  language "nl" do
    sha256 "f8e31ac088ac09374990873af94fd5aa08cda08631d4837652a9d66456c1b929"
    "nl"
  end
  language "pt-BR" do
    sha256 "b17fb3121e51ec3a4fbf48630c2aae01bf05544af336f9fbacbf9ecc65b4cf4d"
    "pt-BR"
  end
  language "ru" do
    sha256 "4d8e70856e69948b04a2a836ee296b7899569a27918875e4f02a28430d01d6a7"
    "ru"
  end
  language "uk" do
    sha256 "afd1355daaaeec0da25d9c5102f07be8c8656b79177e9d2cab4398ae42e321c0"
    "uk"
  end
  language "zh-TW" do
    sha256 "03eca6abab3f6f56e9f221c306689aa276d196e02f7cdbad0c169a58937b54cd"
    "zh-TW"
  end
  language "zh" do
    sha256 "5edb4869f398ce9936f6e54e8724072e149df227ddd1cb985e1ec8beeb3b2cb7"
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
