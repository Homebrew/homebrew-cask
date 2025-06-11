cask "firefox@nightly" do
  version "141.0a1,2025-06-10-21-43-01"

  language "ca" do
    sha256 "04cf71d2ed9ffd05ebae6260c6fd93e1053f36f5a01b2f7f2ff8465bd31c88d3"
    "ca"
  end
  language "cs" do
    sha256 "414e6da61eac86fc885904800e7995415df272906613b641020a989d9388daf2"
    "cs"
  end
  language "de" do
    sha256 "ddca22927f7254057758178aea43bf14d0b0edbce9363531ac60ab219c4fcff8"
    "de"
  end
  language "en-CA" do
    sha256 "8d947a62003631baa5ee8feeb85d3dd3feedaae3902bf0b99a0494c9df06cbd7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4101d573773681cfe857e87ae1afcbcdb92ab2a7de8a762a504f26cdb9638d24"
    "en-GB"
  end
  language "en", default: true do
    sha256 "18cd031790088b91c25ce601346ca14e90fad0e68282601e438e5f82e3b9c2f8"
    "en-US"
  end
  language "es" do
    sha256 "40c859138a973aba90f3c731c1b426d1f17d5ff3c9ffb8cda5a2addd885cf813"
    "es-ES"
  end
  language "fr" do
    sha256 "3ce1a113696364cd1c909d1f71278ad35baab104f3dcb08f66281c0203f880eb"
    "fr"
  end
  language "it" do
    sha256 "3ac6d96be02d21ef56933a4545168589e82a85b1ff97baf94af83ec6f850e2a2"
    "it"
  end
  language "ja" do
    sha256 "d8ce4ff623137d06c153184820e12db6ff1cdc15099e6219d5a28efa7cb77a3d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "faedadff07ea55007af47b9afe5d1dbd809d8a7f597cbd5805262510809ed53b"
    "ko"
  end
  language "nl" do
    sha256 "516ec7496181f51366d1985f5909fc1678dfd323d44a8e20d75603a551cebbb1"
    "nl"
  end
  language "pt-BR" do
    sha256 "08149111c8b949eb4f73e01671b8ffd184ea6cdb57eb89b69af281d228b2031d"
    "pt-BR"
  end
  language "ru" do
    sha256 "e1d2c6a41e78b55575d462e37edc259739d572a865e5f487efcdc83c6e92abc4"
    "ru"
  end
  language "uk" do
    sha256 "010aa77ef8a4b79813aadd66a5eda1fd32e787a127b4b5c473dd817e6c2af9b0"
    "uk"
  end
  language "zh-TW" do
    sha256 "d9ab88d372f79eaca9b9e44efdce2f08821897b7cadc721b38d8d7fe28b46604"
    "zh-TW"
  end
  language "zh" do
    sha256 "5c381f56e9c5ce94e3840188f9fecc2a491514dced52ae604a13811f7761c475"
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
