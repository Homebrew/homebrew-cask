cask "firefox@nightly" do
  version "151.0a1,2026-03-26-09-54-54"

  language "ca" do
    sha256 "3008958d970682688d111b97a06868f036cd2b6aeaf29bf7323e8c305c38cd1b"
    "ca"
  end
  language "cs" do
    sha256 "13f3c749e1f43f68b15b4583b839b31ee9baa573f739f2b0ce76d4dad2ddc2d4"
    "cs"
  end
  language "de" do
    sha256 "9665b67e0e7ac75299e6d7546712e8fd80443b44d8cc613a214fcd893f776635"
    "de"
  end
  language "en-CA" do
    sha256 "e70708642dac61ab493ff7ebca7d37416f718cf8a7fb77b9af6eccfe435308c7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ddaba1fcc580e276fd6229c856cbb18163f2b870b265c2febbb87d16798a2692"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f6587e5672ee04159062b84f746326071e2410ca9a5d683bf6ce05549e5cafac"
    "en-US"
  end
  language "es" do
    sha256 "f946113c3080cc7a830024e8e2a3a77a02f8e06bec9f536245b59364a078673d"
    "es-ES"
  end
  language "fr" do
    sha256 "b48c01c81190b40a7f42eef0e44cf039255b1642db2fece123a7e53c0ff52733"
    "fr"
  end
  language "it" do
    sha256 "26296ecce96c97458a4a25191be4ba3ba7e0deab7f395c4d52d521fdb13bf39b"
    "it"
  end
  language "ja" do
    sha256 "20f8ef283ae6c783cbd8eec230416c6634273b93a902d9d542bf8472f6af2d93"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2e415f50b1ff95b39dd3eaa0ff113b58a0ede147a5008d0c50db34342c6e2c25"
    "ko"
  end
  language "nl" do
    sha256 "ebaadecbee3ae447a209a01dc4a6cae9641701df4b7340e00f2f4985faa8a7d3"
    "nl"
  end
  language "pt-BR" do
    sha256 "9dad772c121a57e7f3b161fea7ba77116d2c0575c04d523c97c9d1f48abcff0b"
    "pt-BR"
  end
  language "ru" do
    sha256 "5da4612612e18987886f72c0446d295fbb977cb337dc2bc93e6e13a8b62b193d"
    "ru"
  end
  language "uk" do
    sha256 "c8ba1f625947bf667eb8fe8267a57ac9020b1541b6513ff24856e7d98e46d71d"
    "uk"
  end
  language "zh-TW" do
    sha256 "c49932bb012de21b703d532075fa6f9091b0a7ecace0ae7009248f5cc4cfa481"
    "zh-TW"
  end
  language "zh" do
    sha256 "7c60eba43fd7eb7e46ab0fc7e42fabc1479c020adc6c5b634d6403ec59805030"
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
