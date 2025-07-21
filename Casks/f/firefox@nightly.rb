cask "firefox@nightly" do
  version "142.0a1,2025-07-20-21-07-20"

  language "ca" do
    sha256 "19d808817102baea20c49b924a1cd9b8711e8f84d2c3cd60ad4d135a89119cd8"
    "ca"
  end
  language "cs" do
    sha256 "927ec8ebf5228f66a86f13b5833e633cc0921b6a637610eb54b1fd7c22c78905"
    "cs"
  end
  language "de" do
    sha256 "28ce5051380611bb34bb4629e2f34afc188fe40e8c4fa331b9981b11e1470603"
    "de"
  end
  language "en-CA" do
    sha256 "9c6574a17b29e570db9c22e429166bac1e0a4fdb754417f125fd3171174585aa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "20b5c91a057a3e26882b10d2e18e449bfc921e4f9c1df4a930a3e6123e66e232"
    "en-GB"
  end
  language "en", default: true do
    sha256 "07bbacdbfa08c1b8d903fc2e1df6bad5ef7b6b19f70a1ef220eefb6629531003"
    "en-US"
  end
  language "es" do
    sha256 "076dcc327de0c69b18a3d8aaf660635570fe77c4c77d049aa2df3d660b65151d"
    "es-ES"
  end
  language "fr" do
    sha256 "48d4b250d4020590f5261b6838fd34ff8464b1f9e92baef037235e1961427bb9"
    "fr"
  end
  language "it" do
    sha256 "59052913291af31d12b7004017ca1113e1814ae3bad608bbfd95b247c77df38f"
    "it"
  end
  language "ja" do
    sha256 "8347c494d4fdc8f088ae5cfd169a97046b8456d67fe90bd8864b95fed4379f91"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "feb07606404d22ca71f8beed0aa284210caf658ca04cada154dd3a420bf73315"
    "ko"
  end
  language "nl" do
    sha256 "4f479589602964d898bf830b80057aa475a80cc375f1a87f8059eb90875d2dd8"
    "nl"
  end
  language "pt-BR" do
    sha256 "24c8423b90b97dce7f4bbadce484f60b1e62b08dea9fa28055b28f2e9a453133"
    "pt-BR"
  end
  language "ru" do
    sha256 "7a35da57fd253aaa2a85ef0e0155435a6f9d87aa22f770976b4a8d41874832a2"
    "ru"
  end
  language "uk" do
    sha256 "6c929b325bebb7c3a180ea6dc2a4b2719bc0dc8cef562943f18977a1be210fbe"
    "uk"
  end
  language "zh-TW" do
    sha256 "4dc5004623f9d7b26f326889aa9c58e2906e1fe33f0beeeba1f2a87762e0b6d4"
    "zh-TW"
  end
  language "zh" do
    sha256 "aec8b814c981e87f200ae2cbed2219c99d8a4a1e42ce1906904de071d77063bf"
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
