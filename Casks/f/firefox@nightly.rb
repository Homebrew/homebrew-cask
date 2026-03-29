cask "firefox@nightly" do
  version "151.0a1,2026-03-29-09-30-51"

  language "ca" do
    sha256 "33911556623a6b7bc1ee20cf1488ad726cdb7533e3d3003c3f6870d5e862a50b"
    "ca"
  end
  language "cs" do
    sha256 "c25bfed7da4f204b76a1d79b9bc0e9eb63d1356dd5e794e06af754eb3dd91529"
    "cs"
  end
  language "de" do
    sha256 "b94758807cba026faa19d9df437e982a16434e097738dcff28950d3dcc18bdac"
    "de"
  end
  language "en-CA" do
    sha256 "b77b1ca7532bb22eae698f0071dc5376970b242e2cd77b2e91a8dbc1f9f03d9c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0b14582186eeb46e3e758980ffbc1cb374a10d362c671a9a6c15bba2776a5afe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "79a75da34329c81640455fe989f3659a0c85c0780aac1dee08d6be869d9a5cc9"
    "en-US"
  end
  language "es" do
    sha256 "8cb00302e58b173b4c4f8e35c636e32d0eaa1ef859e1e2fdfc3ede5f34af86e0"
    "es-ES"
  end
  language "fr" do
    sha256 "dfbdba73fcad12bb0d5f785e545fffb6ffb449cf68a15760de85210be0bd0fee"
    "fr"
  end
  language "it" do
    sha256 "1d96f5e125dd77b7717226d898fbd6c55c7f5f003eebe494af6beed66139c688"
    "it"
  end
  language "ja" do
    sha256 "c1b94ebcb70712797d4486c622f8987d017c30739274716c9c90250f87041cd8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7ab965d0bb56cdcccc68c186ab1efe29df7d3a19ec9e064a0afbb4974e51f353"
    "ko"
  end
  language "nl" do
    sha256 "21a68727c429c2a1cb9dc7a98de78eadcbcb907822a9c6493083e0345c4c945d"
    "nl"
  end
  language "pt-BR" do
    sha256 "751faa18f35073f5e033b5fb6e5a7840b21e6886e497a7d396e17459b0b75ead"
    "pt-BR"
  end
  language "ru" do
    sha256 "23864e845ff98d69ff7b6b7f5078fe3ab095e4d6ab23d502687810441071dc2f"
    "ru"
  end
  language "uk" do
    sha256 "d73159ac93d6cada5da4eff7c47d184989819f5d080189e160968d5f9fc234c0"
    "uk"
  end
  language "zh-TW" do
    sha256 "2482d07cd4eee7438bcb134b7dff94f2f734685827ef9e1ade54af3371307173"
    "zh-TW"
  end
  language "zh" do
    sha256 "a54639849bfb095b4aac9c232b4ef683911b7b2161e5c808a1f448680b9d0b9f"
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
