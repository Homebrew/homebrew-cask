cask "firefox@nightly" do
  version "150.0a1,2026-03-09-21-41-49"

  language "ca" do
    sha256 "24515857a60f21e9132e727016675907fa3de5e5430346ae05786985d988961e"
    "ca"
  end
  language "cs" do
    sha256 "9c27c05271828da98f797cdbdf488bc6e3648d990e3cf01e72b11cf619066065"
    "cs"
  end
  language "de" do
    sha256 "b90c03643e357e943b11e32839b7347ae0cfda891601fd88f52f229ad523cace"
    "de"
  end
  language "en-CA" do
    sha256 "5a30d5501c57d9bb3fe67b6ad50480b77837dbb5879ec1201f984f3cb5230218"
    "en-CA"
  end
  language "en-GB" do
    sha256 "643748cf897652248adcea3586c695a35530900d2c0d633bc733a7261161ffd0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "590fef78817707900716a8acd29aa9ed539aedc2149eb5464349d3b4d233eee6"
    "en-US"
  end
  language "es" do
    sha256 "2ea99f40327a30a3b2fc815f4d37167d35a8e80d90cff8399e18d1f71e288b35"
    "es-ES"
  end
  language "fr" do
    sha256 "76f542dfcf75e7ce58eda71e92b4377dd59ec8def44911ca6ba3e50338d6d310"
    "fr"
  end
  language "it" do
    sha256 "0ca8e1a23c5aeaab7b12cdcb12308274f3fd455b0ce3d3a7fe51669003e62049"
    "it"
  end
  language "ja" do
    sha256 "8b4967387c92878f091e56576682effda3a7786a99cf95d20b79b90b8ff3b92a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4bd3ecaa4e5dd3526222bb7fb9da835c16430496acd28972a97afa1c4d4213eb"
    "ko"
  end
  language "nl" do
    sha256 "18822717306f135223a6ab6cb19393ccd422c8f5cdf1c9968c8ba81c80e29a5c"
    "nl"
  end
  language "pt-BR" do
    sha256 "9c54158beab0b5775000847d779f3cef487031c666fb83278a226714f1d6dbf0"
    "pt-BR"
  end
  language "ru" do
    sha256 "a5496e3f7b0538a9d88ad54c987a2437d390a7dee119da3ff926bf229e2f2c75"
    "ru"
  end
  language "uk" do
    sha256 "1e28a52f0c0b57b8bff50328e6ccd547cc5858a6205a71f072190f9449cb08aa"
    "uk"
  end
  language "zh-TW" do
    sha256 "0a8f71cfc9244f12f0764ff6e9540c666d1b966d776c4e5c9a29aae34748b93a"
    "zh-TW"
  end
  language "zh" do
    sha256 "7612cdd3b50aa539c1eb7ef6fe7fe57728cb44235fff88c8e04d30032765860d"
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
