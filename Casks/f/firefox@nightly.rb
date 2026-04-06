cask "firefox@nightly" do
  version "151.0a1,2026-04-06-09-03-04"

  language "ca" do
    sha256 "8926acee8690aa738346af5936ac66fc9adcce573d1f468bd07d90977350570f"
    "ca"
  end
  language "cs" do
    sha256 "2c28b9d4bec9f707511750e6afbedc54e3fa406bbb6f196146a2b9dd3cae46e7"
    "cs"
  end
  language "de" do
    sha256 "b42387c63a5eb6463b0314f42b6270833790a0ef126273944bbb3e57e755c042"
    "de"
  end
  language "en-CA" do
    sha256 "be5c307286bf145b43c4da32ac387aa90fa11b1f840d98819dd3baaac789b7c1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6bf08e5859263465c8414c4cedc65dd8da14f586f51a134bef4262e6db9924e6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f6c53e15e21b165c127d7e7d8a3cabaaa582013030d10cec619ccadc90214e34"
    "en-US"
  end
  language "es" do
    sha256 "c5b38ef41ab4eb5b42be8ab85460f7088fb5cf15574db30eadb4905e150a8e8a"
    "es-ES"
  end
  language "fr" do
    sha256 "26086d5491f338f6d7e29a1f31bd8659879d1f93ea183ddeb080ff111d055359"
    "fr"
  end
  language "it" do
    sha256 "8895a053fa74ace91e7e96aa0a0945db1b352217005ff0ab4f8dc33a12595c73"
    "it"
  end
  language "ja" do
    sha256 "2b87b0912cdcceb541f5e089e14fa20f331c50cae48609bc134398269e94cc1f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "df85225d0a4b2c7b7c73717e7c921906d20ab3df98750ab92c3430179e80f88e"
    "ko"
  end
  language "nl" do
    sha256 "037091f9fa728c0af5b39b17aa320ee57fcb47aa3c4a9c8f708609353507a94c"
    "nl"
  end
  language "pt-BR" do
    sha256 "73673dfda317a4cfc3cafd4d5aa02ec8075c1b05d5629ce27ddcee9df9734200"
    "pt-BR"
  end
  language "ru" do
    sha256 "f7c10d3afa458fcac29e19918c5b2108475752e637ad7a945777582c8655fdd0"
    "ru"
  end
  language "uk" do
    sha256 "355917fd6b403894e8938a1dc64488cf4e8d27346f56023c7748e560753c4aab"
    "uk"
  end
  language "zh-TW" do
    sha256 "dc35a3fec577bc6639b0a9b008550ba2e877a288e18bc3764f17f3732f84de4f"
    "zh-TW"
  end
  language "zh" do
    sha256 "60ee6ddb1b6c45e641b9df3f4e6b36184bacdfee57e041156ac984eedc4c14b5"
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
