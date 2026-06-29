cask "firefox@nightly" do
  version "154.0a1,2026-06-28-21-43-48"

  language "ca" do
    sha256 "96f9073806104476750a14e94ae949a4257c8d6d06342e8e02b2f1e681f60189"
    "ca"
  end
  language "cs" do
    sha256 "2bc4e7fd204dfaf361ed057f6e3f2b08a684ac4dc91b5fbff7add47cecbc991e"
    "cs"
  end
  language "de" do
    sha256 "41ad7bc679aadce62049e47fb85951aa4392e5875e1e89ef81861d553503badc"
    "de"
  end
  language "en-CA" do
    sha256 "50b7554dcc1dab389a42cbed82ddde1577b111b1244d14e01d50af15e7aeb2a0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e29ad4f7515d41b35fbd5ccc617505b46e233c7b5ac3a2a4edeac39b14cd6c78"
    "en-GB"
  end
  language "en", default: true do
    sha256 "55764dbbf6dc6274044a7afa3e1724eae1ae5b525fd9d7c628cfe78bed4dbb4a"
    "en-US"
  end
  language "es" do
    sha256 "910c91c3a5d2dda479f830fef5b3fef4d5ce30fd099e8778da75e601f60d543e"
    "es-ES"
  end
  language "fr" do
    sha256 "2a8e3dd404b5774b42b616a127d6923365db149cc97dd48f50b520ee3536a670"
    "fr"
  end
  language "it" do
    sha256 "e7dea2ca6a74df80bd35e917215d3d09fa3cc4b7881e20c67c4be79440969acf"
    "it"
  end
  language "ja" do
    sha256 "4e6b37dcd6547dd551495cd5b70c101a04f86905e7349e582c77e59c34130986"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "618afa8fca47b84079a95ff54ea0afb3ee8bc9ab827a183823d121cd55c6e19e"
    "ko"
  end
  language "nl" do
    sha256 "4da7bb97c25e59ec822064d83f8349dd753ad9a5be8b84c13954ec4f02de6d3f"
    "nl"
  end
  language "pt-BR" do
    sha256 "26eb75eefccd3aec977eff04e8f54fb0ab58d3bcdf8bb73039104f6dbea9c145"
    "pt-BR"
  end
  language "ru" do
    sha256 "d610f339631923c36d141d478baedeb8ac46aef970d8a2da60e40338fc9661e7"
    "ru"
  end
  language "uk" do
    sha256 "9cbd248f29f2010e4df8a6aec76e0f16196511d707bbf61a1398f5beef8104b2"
    "uk"
  end
  language "zh-TW" do
    sha256 "ba72a308410233c6311ea5dbda00375633a33da35f443c1a0956f9c21f043ca7"
    "zh-TW"
  end
  language "zh" do
    sha256 "089b1d0b8e4a828be64c07653cb312cd1e8f617342e3cad1aa35111a96ec70b3"
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
