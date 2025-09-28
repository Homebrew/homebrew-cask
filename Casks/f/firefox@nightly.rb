cask "firefox@nightly" do
  version "145.0a1,2025-09-27-21-13-21"

  language "ca" do
    sha256 "fd6afa00e454656d64c6464a5a1b46aa5c90dc1a78081993f4ff0b57d8ec30e5"
    "ca"
  end
  language "cs" do
    sha256 "fbb90db870453c9549b639a4a6b8ac8c8d19619752fd12dbf79aa83d2bac34a5"
    "cs"
  end
  language "de" do
    sha256 "df7d6e7a4650d8bfbdd892ff49ff9494fff43ab167ebf9e927c1f3a4e882f67a"
    "de"
  end
  language "en-CA" do
    sha256 "a5eae050ede5a16b05327496c608e44bf96f1d3702ac1939c23d3cb6d03057ef"
    "en-CA"
  end
  language "en-GB" do
    sha256 "84ebd7bb4495faeb702bb1a6e4229de83c57b6b115111c3ac93b47f4519f5d7d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "042fba2dbd2bff323baa913634b747c35bf21916f71b382b297208b6b6d07cbf"
    "en-US"
  end
  language "es" do
    sha256 "95df6f6c6f2d0b63b9293347816e58d7803f8f3507370011ca03c790bffde059"
    "es-ES"
  end
  language "fr" do
    sha256 "3988ba8b1a27beba4d63cc177b7d07de485b547600225ef3fef8528f8bc3976d"
    "fr"
  end
  language "it" do
    sha256 "7c7f99850c58d77f4528fe5c115d043a80abfddb7d177b64662f0176cb38805f"
    "it"
  end
  language "ja" do
    sha256 "50d6358885c67d9122a1c23e21a47b63b23f52872d1da8e9ef316205d6f880aa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "55448ea7608a7849f6520b71d2d87a2a69fbd27f5f61b69766debd603e40a435"
    "ko"
  end
  language "nl" do
    sha256 "9d04346fe59702442c94aae169c726d00ea950952d873d0cae5289ccfc742c19"
    "nl"
  end
  language "pt-BR" do
    sha256 "025e2d386e9cf8f3aa64bd8ee421bb05f8c8b643299cf4de08a05209dda6cec9"
    "pt-BR"
  end
  language "ru" do
    sha256 "40dee59185a0e71b03c68b877c4df428daf175e91df108a5ed5cba15002cc118"
    "ru"
  end
  language "uk" do
    sha256 "10cbfbe6cf87079aea53d2a578cea24863d3a847b728c035b63edb6f65e916e4"
    "uk"
  end
  language "zh-TW" do
    sha256 "8a233e44aed65beaef7aaae962a3d6147974d8d0e6f58828b9dfd1ed4797bdcc"
    "zh-TW"
  end
  language "zh" do
    sha256 "5f2a99f6e76f6eb24fb1292b77494b5cf740dd13eea405c6ed19337fe91a0767"
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
