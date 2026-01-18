cask "firefox@nightly" do
  version "149.0a1,2026-01-17-21-36-27"

  language "ca" do
    sha256 "bfce0cb8a16829b7bbbd8d13787647459f393d0a5e2846ba07422de40e646671"
    "ca"
  end
  language "cs" do
    sha256 "e82841746fcd875e5b2772e9d6a497f898c667ecf8add41c93d1e50485614471"
    "cs"
  end
  language "de" do
    sha256 "8bfd5d267e008d68f8c3dbe0d1c79d26f0311c02262d44cb9b96bfe7e8174e2e"
    "de"
  end
  language "en-CA" do
    sha256 "2861746b085dcc600ae5e6d9871d9ef1304859a6869e61e0c69e2f02eb97c6c0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dc7b9f53d6fa066e97117952f187832b12193eaa376718864df7a2eb3cd833e9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6810ec025388c2c22a6345fd247bdb6873a4fc53285a213208184671181170a8"
    "en-US"
  end
  language "es" do
    sha256 "d894d84ff91c73f480380ec822dc5a0717d656edf7533bffce230d9580ede7d7"
    "es-ES"
  end
  language "fr" do
    sha256 "8a4cb54a20575a5896900ad100f6f588417c9d802387d6d543158236039d6c3d"
    "fr"
  end
  language "it" do
    sha256 "1ff0683a0294dd573a615a9bf452c0bdeb59dd11c766f33635f9d5558d9a798e"
    "it"
  end
  language "ja" do
    sha256 "a597470f3ebe693a079b60a02c6acd78d5ebb127aba03700e7b728855940ce1d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "335459ed941316f03688143a44cc00314a70913b1a084774740c3c777ebb322e"
    "ko"
  end
  language "nl" do
    sha256 "d0246cc499b239bd8d100489f397d930b1f2d7e3bd7dab9b045de4e07c66c401"
    "nl"
  end
  language "pt-BR" do
    sha256 "58607abd0e48ad7d24850bc46598f415f0964498c07c6ead2f91a6544ffbaf64"
    "pt-BR"
  end
  language "ru" do
    sha256 "3a1c25c2a95a9a9918a5b622eb5e90a873d302e119027d6f590d883a7cc45bac"
    "ru"
  end
  language "uk" do
    sha256 "8863acc3c8061a0fdace9629c706ca624cf9956e95f7bbd4c255e9ad091411c8"
    "uk"
  end
  language "zh-TW" do
    sha256 "bd1f1830dd2075ee24433351e06066492368d44824807a4116c024ab15c265a6"
    "zh-TW"
  end
  language "zh" do
    sha256 "ac436e07d5da2ee63ae9c0b5e974e114ed5b71abdacb78ff586053a01c78a878"
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
