cask "firefox@nightly" do
  version "149.0a1,2026-02-16-09-36-52"

  language "ca" do
    sha256 "f00bcd88fa2bc189a92f2065b788decd74fab4dae9eeb1c508f71a17abd456dd"
    "ca"
  end
  language "cs" do
    sha256 "057e66e1d9e5c5f666d36c4d2c15a1c6d010e9fcb72e3f03283d9099c2ac15a9"
    "cs"
  end
  language "de" do
    sha256 "b6a1eb96522b1edb43e10bf9205df79b4bfea317c797094a764f363e267f9306"
    "de"
  end
  language "en-CA" do
    sha256 "1c48f3683c60e0b280cc15776ab78bed5f63f22c593c03e9353816f7eeeb9bdc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1d5abcde0a26892d083f24b61c0106b352a1b389f04059fce0ffcdcd85113f30"
    "en-GB"
  end
  language "en", default: true do
    sha256 "14e4ff8146e9d39814980e7722887e3fa36cfccd12ee3910ec3f71e2176cdd20"
    "en-US"
  end
  language "es" do
    sha256 "62aabdfd1fa4e8bb458c7aa1d064ee9d7172956ba66e2c33f33189a4aa4e959c"
    "es-ES"
  end
  language "fr" do
    sha256 "09e3269ae956d0d281901a9a096dda373b2269a2bdbb367b9bc13b6b545563a4"
    "fr"
  end
  language "it" do
    sha256 "cddde021fe908ef7e587d4c5a1470650a280c2501e199b81cf79b484e7cbe8b1"
    "it"
  end
  language "ja" do
    sha256 "9250315c2b22ae08bed02a51b166baedd20fb34a84e35d7dc022319b9d0cd0b3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "778c4e3bd9dfab1323dd230b3b0dc82cc07125d45231c79a6338dadc329cb30a"
    "ko"
  end
  language "nl" do
    sha256 "65564a373a1f09053244b084993cbfb1ce84cc4bea1c7682e55c1d6f0debc7f5"
    "nl"
  end
  language "pt-BR" do
    sha256 "0eab465e91aa81996030cadfe4247687ff6d837eb1eccc321a4e753e1ded4488"
    "pt-BR"
  end
  language "ru" do
    sha256 "c0462c0e659696231dd8849a68a57749fb582f30b045d2083c8be2b115edcb9c"
    "ru"
  end
  language "uk" do
    sha256 "41e640b7e9daa5e18862a407fec50a110eff4922b77002106202b877db094462"
    "uk"
  end
  language "zh-TW" do
    sha256 "c76520ff3fa38803dc6e9cf8373b6725b8c03c9e67fc540b99a74aaca76d99ba"
    "zh-TW"
  end
  language "zh" do
    sha256 "fafccdd0bffca5da6b2375c3eec192a2f9a81c38c0115e32bbe054f2bbc59189"
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
