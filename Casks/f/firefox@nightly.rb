cask "firefox@nightly" do
  version "141.0a1,2025-06-23-06-52-50"

  language "ca" do
    sha256 "2ba7da13a9e36ceaa52114690796df8b3d5d56c1d6c786061b757628c8952388"
    "ca"
  end
  language "cs" do
    sha256 "d48688981d17179ccace2b740ffd0cc4095701576930aeec04de0b02fa9be67c"
    "cs"
  end
  language "de" do
    sha256 "b229d28b1ad63126e5ddbe3ac2f31ada21248e95be6e4eb53864bca3dba78ebb"
    "de"
  end
  language "en-CA" do
    sha256 "ff357d34eb423b6bab3bfad2dbb2858afbc7987e1e6f691663bc97b9b087af4a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9e5359f57335803403451360f46f94bb084e011ea52b76d38c421dcdf53a1db3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "58d66568568a705e1c26dd27521bc2a33038d62d8199dfa9e7f9a3ab42ceb34f"
    "en-US"
  end
  language "es" do
    sha256 "e66129d09319639512d927398baa5ec56de6c3339c7a4abfe18466ad2d7ecee6"
    "es-ES"
  end
  language "fr" do
    sha256 "d5d6b3389656e765035adac7e1807327c3e9a312785204c7ed1e30c77edb8d92"
    "fr"
  end
  language "it" do
    sha256 "099603559f1767123581d11e23313f5720bf854d6b173a84126feb83703ffa1a"
    "it"
  end
  language "ja" do
    sha256 "aacf85ba561a960f3bcea16cc1e8b36edf67116bfa43f673b3e46bf0c5ee8496"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "21f691531a8637a9e52868aa74e434c69751dc87c9ab116c5f8c34660c91e107"
    "ko"
  end
  language "nl" do
    sha256 "1a4dabe710b00a54fc4707971d67d8e59879cc7a04ac53e440f8cf5aec641d84"
    "nl"
  end
  language "pt-BR" do
    sha256 "073056520e1149cf47a3f6f6881fe7a3c9a193056b0ed40b84d32f5e9aabe74d"
    "pt-BR"
  end
  language "ru" do
    sha256 "3e4f634fff440269b10ec3f4fb42fcf4a0860c1f68513dd3e7e4ff663e0a37ce"
    "ru"
  end
  language "uk" do
    sha256 "ec009e9f357a92bed8aa071cb0e062031857fecb8d134dc05db90cea3b105061"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e848de550c00225559cdab4a5e8aaea90db9367ae50c8b0b718bbeb9bb319f0"
    "zh-TW"
  end
  language "zh" do
    sha256 "581bf9bd8319b9d0ab1c5ca17ed2c16bdbdb7ff8f16e035190cca5dda169a582"
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
