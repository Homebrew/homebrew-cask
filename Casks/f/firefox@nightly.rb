cask "firefox@nightly" do
  version "154.0a1,2026-06-21-21-56-06"

  language "ca" do
    sha256 "d8d496386ca09e896a111763c66accbe73990bbe67528f6a1086235c0b8a41b3"
    "ca"
  end
  language "cs" do
    sha256 "030a9440ff4c6b264182937592307fb0d03b1bdd5f7f5441e4b917224b002987"
    "cs"
  end
  language "de" do
    sha256 "55529483852fe4d604f8aea25a2eb12117c47868bc2297ef04fd8a2d519a4e8c"
    "de"
  end
  language "en-CA" do
    sha256 "fb18d704fe37534c40cfcd8bcf4384489375f6e0e7f58a51f7dfb26ae7be6aae"
    "en-CA"
  end
  language "en-GB" do
    sha256 "76b6102ac26561bc1f995722c4d07132a1ff912e643bf56d7ed37629173da5ea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9d0da3e6006d7e24100d811e55db1c1a3cc14fd4b09128d02bb630051d1fbb33"
    "en-US"
  end
  language "es" do
    sha256 "dfebfb20255a84e202f4f1a39992eb643948f46044fb6adbe2c20445a912b72f"
    "es-ES"
  end
  language "fr" do
    sha256 "47d638450a41aef74d79a08ead2ded486ccd3d0ddfc35598c764039d703bf579"
    "fr"
  end
  language "it" do
    sha256 "b79ef1e3b5498508689d93142b04064caf843d90a42067619d771db667b58bb1"
    "it"
  end
  language "ja" do
    sha256 "d590ae42eef75510969d93c7d16bba68db76cba3cebf37da9a4e47a092f0b63d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0a7108e4b37332aa4df555f38d37ca5c5bd0250cd7d44758b76d38d30dc24f27"
    "ko"
  end
  language "nl" do
    sha256 "0594c4b8d6069b633baa7439b7a454f5c68ed980d4adaf4d5823f523a8abb292"
    "nl"
  end
  language "pt-BR" do
    sha256 "e715e58afa2cb2813214caadc945638b34f46ed6300400fa97813be6925357bd"
    "pt-BR"
  end
  language "ru" do
    sha256 "97e89b53b6fdf88937c63eb3500be89b7342d134c022e5f638bae36600660e9c"
    "ru"
  end
  language "uk" do
    sha256 "bb0ac93c6b2d1d4a8f8b042d6190a6ac624c8e543bb8c79ca81218d4a35b7d93"
    "uk"
  end
  language "zh-TW" do
    sha256 "5a77eb8824423be3dc8dd34214549e558f33cac0b804d56250a91d39e26ca604"
    "zh-TW"
  end
  language "zh" do
    sha256 "b8b04c88ec02b5d4b8c24f1b4f96424d0edd8fe50a24f0f6c73cdb07c48715ab"
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
