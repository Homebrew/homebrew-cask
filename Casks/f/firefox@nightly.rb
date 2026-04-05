cask "firefox@nightly" do
  version "151.0a1,2026-04-05-09-24-13"

  language "ca" do
    sha256 "9510d8442ec2ebe6ca1517d7d78669b0b4966eefb9fe890e3eef2a8350c20a50"
    "ca"
  end
  language "cs" do
    sha256 "4844e602a37dcd6f9b742174fa96691321956cbdf7f65a33f9f9bcabe781089c"
    "cs"
  end
  language "de" do
    sha256 "236b9d3a5bb98d0348b7c7213b03a97fe6468c8658b9c194e9bb0cbbe53da86d"
    "de"
  end
  language "en-CA" do
    sha256 "bee3b1965d55f3e21263f21d28767bb0b5de166ba81bb208d7591be7df32e7d6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "26c2f7d08ecdf4a86d827b80ffa2d7dfc3d0c6d28fe340e587f614a589f445bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5fcdef225c40670af0da5142e6cfd4293983e6015c11b4278a3c2ffc276dfbe4"
    "en-US"
  end
  language "es" do
    sha256 "10027a2d9615a2124af76f31a4ed61eac5461a9a56afdc1747b2ffd0604db088"
    "es-ES"
  end
  language "fr" do
    sha256 "89dfa4453373677a6c021993437d91c667a25ea3f5898e4b4dde07fa5cd75f01"
    "fr"
  end
  language "it" do
    sha256 "d1e914f91ae8288784cc6be02ddf7824e4a49d8296e1dd0af475be14235facee"
    "it"
  end
  language "ja" do
    sha256 "42390ebb1fc9008570d3569375c5361b291e5cb0d7cabcf85558bc3aaf663860"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "175f43a2fce95618bb2b66065c8c0b76acc2c1bf807ea41c70604104c51db122"
    "ko"
  end
  language "nl" do
    sha256 "2d10ec56e9caa8749521c17617ef471bd50aa1c8a995f70b8fc7649da424d297"
    "nl"
  end
  language "pt-BR" do
    sha256 "0bf8795aec08f9c34900d9016b872598856494ed3415bab9739d710d392378a0"
    "pt-BR"
  end
  language "ru" do
    sha256 "b7060cdc6fa8a967ce5bcdc285ae991c61957718bef823e46e1e908f7cde091b"
    "ru"
  end
  language "uk" do
    sha256 "3296159d504559fa0d4644f750e2c4d7a56ae0f8c9d3d9e1e56620fb5eec8593"
    "uk"
  end
  language "zh-TW" do
    sha256 "4db56b049a5692045d238452a6417dda111586fdbd5e35b8ab62cfdd17559359"
    "zh-TW"
  end
  language "zh" do
    sha256 "2ca37d5345a67da893a603d21be9a857a242e852eee978733638841ce1bcba63"
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
