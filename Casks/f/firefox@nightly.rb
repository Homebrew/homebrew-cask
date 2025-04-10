cask "firefox@nightly" do
  version "139.0a1,2025-04-09-21-06-23"

  language "ca" do
    sha256 "e7ea8523e35487a1aa91aaa1a99041f424fcea780049b9b5a4d35d8ef85a9078"
    "ca"
  end
  language "cs" do
    sha256 "8286717427544371df79fa8c96090d7b7576b33cd2062bb040776e9728aa38ca"
    "cs"
  end
  language "de" do
    sha256 "4921ff55ca29d635168f8e446522fdd859a801d9ab0a56223978652b09e5fc85"
    "de"
  end
  language "en-CA" do
    sha256 "e8751246c75c3055ae9cbcb84e852950fb5ab7225b63c6a2bbe8fdd085b3a063"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f47ff496be03607135438d7e84eaf798ce12acdadbbdbe7140e5fe7ff24036f9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c376c675f024c78998c5f8db9b4179306465490f696c46bb62aaad857a8c8060"
    "en-US"
  end
  language "es" do
    sha256 "1c4ed3c0ac4b76c16a09af392e3eee182633194e6037641d59696127fa59fad8"
    "es-ES"
  end
  language "fr" do
    sha256 "49864fee2105b52c82ff8cf5642a24505f35b1d4eaa10175d0223737e930eb3e"
    "fr"
  end
  language "it" do
    sha256 "5bb1693d15ebaf2779b4d950915b6e7eaba36bad26f0823ac19b203f5c80f3c9"
    "it"
  end
  language "ja" do
    sha256 "f5b8d889d23e284ceee6ff498377ea8e33dd7f8a36929bbc3e727719812f8fd4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d5fa1fd04a13911ba303e228480bd2fc28b8f3e6632d35ada70a8aa7947444f2"
    "ko"
  end
  language "nl" do
    sha256 "669a4aec78184af954943d61bb82c96fb720310fe8f5753ca3034b9e4de0bc35"
    "nl"
  end
  language "pt-BR" do
    sha256 "eb8f280963afe42057d1b2f47704c1bb8814eeee01315ec383e5b051553ca2dc"
    "pt-BR"
  end
  language "ru" do
    sha256 "a4eb7adc7f739326c25a311198a6e01a811fdc6fb25f70426c0727bbf163a988"
    "ru"
  end
  language "uk" do
    sha256 "189675e0f585e034f592184fe5eb72ec4c1b6e388ce5e1564dfbe22f98bf835d"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed9731bb2a12f0ddf5e05d0956c3ec3d055723cb9c73bcb9ee0f938025da2be6"
    "zh-TW"
  end
  language "zh" do
    sha256 "4c1df13c8d1a83309ac4f341444e4ca31a11862fd5e7f1f871403d989a849f9b"
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
