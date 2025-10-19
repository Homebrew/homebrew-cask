cask "firefox@nightly" do
  version "146.0a1,2025-10-19-09-05-23"

  language "ca" do
    sha256 "d98c4508826a61e23d2817bfa6e7f00d618d9ac3494a170429bc38b57091cc2e"
    "ca"
  end
  language "cs" do
    sha256 "751582b3ab3ae87137f3e7dda251dab797ed4965bdadf708a9e7c2e35b723104"
    "cs"
  end
  language "de" do
    sha256 "ec4cba7771e2bd8814e4bdd981900479c4b31b3724bb5a0ac89c75fa9822af07"
    "de"
  end
  language "en-CA" do
    sha256 "d49706881aef25f02771d284befd96257f60f87bbcdd97e21a41ae109605c76f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "30326b380ae9d9d17c28c98f7711647a6964429c44bb1e6e087ca8346a8cb7b3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c7211a4510ee6ed0633e97e15c8bea90eb8a2d548c7e70cc7838b22db402225e"
    "en-US"
  end
  language "es" do
    sha256 "8f6abf6af341b853d40eea6f45e4bbc4652dab0e628831337e622bc742a897a8"
    "es-ES"
  end
  language "fr" do
    sha256 "e35993e2441f0115523f9959446734d4b680efdba7f3b53265ce3fb3295a8e47"
    "fr"
  end
  language "it" do
    sha256 "0083802d9ca126c55b0f68235ce4c54d6d815d0092784c5e8135b7059a459b45"
    "it"
  end
  language "ja" do
    sha256 "1383e9398b423d8943dc22991520465f407d5250c680be65b5ac20420462aba6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2bdd87bb0f46b942098dbba91ba1e7e6a49ab40824f6c8bccc4c35a334267b9b"
    "ko"
  end
  language "nl" do
    sha256 "25548f5fd70b4b4166b961669a6f9e7c00deea6acf75b7315bfdabc73c801035"
    "nl"
  end
  language "pt-BR" do
    sha256 "54cdb92701e410cc0cbeecadab58f013e30a0a80cfa73c8ba32fd0c6e3eef1d9"
    "pt-BR"
  end
  language "ru" do
    sha256 "89eac756664f2685429674df0d5c1b28fdc4a58a572db0e1962f042c4a8b7649"
    "ru"
  end
  language "uk" do
    sha256 "98158c23c0f63647bcda5ffea07b557ddc8e8dac56282a4385e534979dfcdf1c"
    "uk"
  end
  language "zh-TW" do
    sha256 "932ee9c3f69c4ab20c61e6cc79eaa7986a96c632faa9238fe6b447995fb89fba"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae8466a12c27a30daa498e5c5b49ad19f9a83220f917d5303b7706b2930c9d35"
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
