cask "firefox@nightly" do
  version "160.0a1,2026-10-16-19-38-15"

  language "ca" do
    sha256 "8fda2970508bb45ded17bf49222b3e5c1720cdf5e4b2254a7ea724e23bb875dd"
    "ca"
  end
  language "cs" do
    sha256 "688df9e6b7b4762344771a00d0de22802c089737ba87a1954416df417b274d4c"
    "cs"
  end
  language "de" do
    sha256 "40cda46aec093fc59386d7982d488f8bdaf2ad00af886628a800074e54789758"
    "de"
  end
  language "en-CA" do
    sha256 "7496470be06af62a07f938ae50a772e0128ba7fbe3cfd48324987b353673ac14"
    "en-CA"
  end
  language "en-GB" do
    sha256 "82d413246592bf82e6379bac68ad1bd6c876d3512e098231f862ae1245ae0b80"
    "en-GB"
  end
  language "en", default: true do
    sha256 "731e912fc7dab5fd5a7963d93215bf6fd1c81e05835492740acc70603172a6bb"
    "en-US"
  end
  language "es" do
    sha256 "c427a010ca5d45d43a909b7148e347cefa4605b41d31687938672cf7795606ab"
    "es-ES"
  end
  language "fr" do
    sha256 "4a27320c3ed3645fa252add4e2b72e34b67e636b85ac8f511fcaef973023a06b"
    "fr"
  end
  language "it" do
    sha256 "f29fdd97f3bd19e1a9c85758e093d68f0c37a88ce8310f2ec0de02e9f72aa833"
    "it"
  end
  language "ja" do
    sha256 "57b76b495bfe4898cbe71d7f246de7de87f788f4f9dec84a0b7028f10dff7add"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ee9510db21a1342e6a2521a807c596202b6669c4ec58a5828cbff044a03a59f7"
    "ko"
  end
  language "nl" do
    sha256 "6253d682f3c8480609f4e2616914915ea52b3c87e79454ddb6a1d125159edb2f"
    "nl"
  end
  language "pt-BR" do
    sha256 "f2b0b8a90078a476a984df13822fae7addb4feb99fa26cc5eca530eec9344865"
    "pt-BR"
  end
  language "ru" do
    sha256 "a26f32ff0e2bcbc964c90f9397196d2d0ed2515804cf111d7892744f8654ecdf"
    "ru"
  end
  language "uk" do
    sha256 "48da242090f31642446c902f28fbadec2f21ef0ccfb48231a5a4d21879f9f57d"
    "uk"
  end
  language "zh-TW" do
    sha256 "06e3a441f35b512cb008a4e2b95f62f239282c3af5d91e74ccd112a3e5696d49"
    "zh-TW"
  end
  language "zh" do
    sha256 "39750724d5ea073934591bf76cf847168cbacc355171fc8cd0726418c9d3c528"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
