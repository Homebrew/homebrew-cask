cask "firefox@nightly" do
  version "140.0a1,2025-05-23-09-16-54"

  language "ca" do
    sha256 "c4a640b8dbda85c7b001bb27e098982ac54f31c7a06d035deecc4c8f28d3cb70"
    "ca"
  end
  language "cs" do
    sha256 "0c06f1e8094968e7078abdea2e2b037dfeaacb221f0497ed7ae4acbc8c308bd4"
    "cs"
  end
  language "de" do
    sha256 "49b8959123cfc308dc9aa92eaee758d86eb2126a1d41735579ecf010b084a66c"
    "de"
  end
  language "en-CA" do
    sha256 "297c5052073e7f9b8e8750efec75a486cc6744bc19ff0982f9051d429ec3fb7a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6423b0e5534c68218a03ce7c5027c515a260d0015d95475e048f8ce7a7b0b12c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b8c1b8fc9b10235011384d8cca78e228da8a97fcc04269e8a410e4e166e837c0"
    "en-US"
  end
  language "es" do
    sha256 "9037cb803649e415912736681a712f20b04d061329695817d043d7f3a5cd5ea4"
    "es-ES"
  end
  language "fr" do
    sha256 "052fb3fdcae28e670d440b24a7934f19c12386c9242e44cacaaa93f6f63f5d74"
    "fr"
  end
  language "it" do
    sha256 "c5648a4f2e420335cc8f3255af367b3367b95044a77286535c3973cbce8f4073"
    "it"
  end
  language "ja" do
    sha256 "ea52e3e10b59712314a8b457fc637158764aa4686bb7d2929748fd937391af95"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "76d41aa475faec5718f39f413e2a933148b8d3453b78b31b3ac530ad3f44f0c8"
    "ko"
  end
  language "nl" do
    sha256 "a6ad55c46ba8d7e254ba7db3fec545e8bd6066189e1888649436fb68344829f1"
    "nl"
  end
  language "pt-BR" do
    sha256 "932969d0524de7cb769f75f62fedbb774c29be79cee6822bc6f27dde62eeb218"
    "pt-BR"
  end
  language "ru" do
    sha256 "4bf43b8802c4fcd1a67171cbb50413ad5c1a7e23d5c92a0b9b2b35ab8e751271"
    "ru"
  end
  language "uk" do
    sha256 "e513263f935ffb9391fe274a11b14ca74558e1839bf8bb042f8ecd5c941148fc"
    "uk"
  end
  language "zh-TW" do
    sha256 "e26c96733d0b13a4e023aef19a8e57b789a045bff86202457e02e741e48b6d75"
    "zh-TW"
  end
  language "zh" do
    sha256 "5ea1026dfac84a921bbd25b4f7b337c7e72b0fa6210500c271dc5c8a9540b7dc"
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
