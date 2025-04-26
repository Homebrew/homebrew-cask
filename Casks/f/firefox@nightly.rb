cask "firefox@nightly" do
  version "139.0a1,2025-04-26-09-16-04"

  language "ca" do
    sha256 "5d5b970e7e3302ff08732b959bdd4dd89b08c88f4f127266cddbb5d8a7f18988"
    "ca"
  end
  language "cs" do
    sha256 "12749e4cbde0aa1b20a555d2afbe8f14ea80413d524cc8a573d9e679ee434a23"
    "cs"
  end
  language "de" do
    sha256 "ffb8e9200ab4876186ab829ddbf44ed5f3fdfcd9b55e46011ec421faee7db780"
    "de"
  end
  language "en-CA" do
    sha256 "f98aae923ac49db5fa1acd6ea79c25a01028db29c64d26ba5afe042d59d357a9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4992d5722d20127d3219668898b4415b8962e277944bade1809de6f431b537c4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2a0b4dc7d5028bc358f9827d148cfb8d891c40cedceedd66de313e455bb464b4"
    "en-US"
  end
  language "es" do
    sha256 "f439ac83191d3c008dc2d37ed887356d0f6a57c43c624f43da44ac3f1e8c6131"
    "es-ES"
  end
  language "fr" do
    sha256 "a073cd5f4d1b51194f74a9f245edbd3ec0fd262717cafb3c316df934970bbc81"
    "fr"
  end
  language "it" do
    sha256 "adea6e6dbb0c2b73dfe1872b4f7346db7cbae10786ff00a2d1ad76c2322eda94"
    "it"
  end
  language "ja" do
    sha256 "6b6dc827423a524c1d5f04543bd716fa1900ecab9c97e132f9b2657261674b43"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "eebc844c02cae1ce94f5fe117e6a0eb8db424dab57b961d2eccccbfb2b1dac03"
    "ko"
  end
  language "nl" do
    sha256 "ff49576556d7fd0825fb204d213028183613a4699e7ce3345c00ecbd71bf0fe3"
    "nl"
  end
  language "pt-BR" do
    sha256 "4407d900b346e5f45062666c27e65a4947d402d87fcc6eb91def967cfc47355e"
    "pt-BR"
  end
  language "ru" do
    sha256 "af2103b10fe6f205eb1a76ef536cdc721b89a5cb10b750cf51b8e4611572cc6e"
    "ru"
  end
  language "uk" do
    sha256 "e8b40f366c9b9829e6c19314b019faad9caa01583d35daa4546bbbda046275d4"
    "uk"
  end
  language "zh-TW" do
    sha256 "55b37eee8fe48a587929ff8626f0312e34cb460d0305493238fa475b27e7520a"
    "zh-TW"
  end
  language "zh" do
    sha256 "4d70f532b03cecc2c33242d642eaff4ec89bea93ea6bbe199422ad01c2fb3c5d"
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
