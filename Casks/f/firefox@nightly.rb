cask "firefox@nightly" do
  version "150.0a1,2026-03-16-09-41-20"

  language "ca" do
    sha256 "5a370a052b1b88eef500b785a773b8c9939b10e3c6792b309e0ebf525406c452"
    "ca"
  end
  language "cs" do
    sha256 "fad0143d4c47625e73f407dec7a3f335fe3802b1a2cbb7d4c7dcccfd2537d019"
    "cs"
  end
  language "de" do
    sha256 "64ee70ccc0fc9982cb5ebaf3358c49912d15f05ce0ecf1aebce989284a03b8e6"
    "de"
  end
  language "en-CA" do
    sha256 "1e9ae95e910118e8d325844793622255b312cd60df8bbc9870d3d2a1d4f24f1e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "44e45f9f2cfc4dd7a944ce3a2e214bbbdcfaa6185bfdac1869045d6e877d5828"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7b0a17bdf478a14893cdae5df53fe0d8fad1364f14e1eb1a55584aba16d37bb7"
    "en-US"
  end
  language "es" do
    sha256 "c91250fa200abc91d167ab85b2b488db38aa57b1fd3cc34323601b0eca561212"
    "es-ES"
  end
  language "fr" do
    sha256 "552cfa0115f3f3392221a83191dd2c0ee41896989ec3171c1f803bc338869026"
    "fr"
  end
  language "it" do
    sha256 "b7bef84c5b7676c8ba2db438b597fb3a2a41e5befcc67e51cedc1dda77baa350"
    "it"
  end
  language "ja" do
    sha256 "2e7f25f8f5f9d11ce7b8abf32eb3369a08fe2784d361d0c86f4ca011268e49e1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "baaae4e6dcabeed0519950a787f98a4714c050ff15208e886a8a723f16eb834e"
    "ko"
  end
  language "nl" do
    sha256 "2cf8adef1f670ec2fe9d8304697027c2028957cdd8ad6ebc93c67d6aacbb7226"
    "nl"
  end
  language "pt-BR" do
    sha256 "00e7751682b96ff1cebfc1550623851d282cb4c2d837fe78212386e371b6d265"
    "pt-BR"
  end
  language "ru" do
    sha256 "5c8bb47fd5ae80a5e1c73aa648b5f70a49b2012b0e322eb0a73173569564408f"
    "ru"
  end
  language "uk" do
    sha256 "7ebe6bef1305c455d441e3fc8c7863e3b690288d13fe6637e75e0c4f132b5d35"
    "uk"
  end
  language "zh-TW" do
    sha256 "2d5bcf8c260ddd24e3978895a0a3afe08362cce90845d96791dd0e34d57bbb53"
    "zh-TW"
  end
  language "zh" do
    sha256 "ca7d1a7bce186315aa9791684c49f089d19b8f66da557ecfbb635ac5b3ffad5d"
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
