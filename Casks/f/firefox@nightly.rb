cask "firefox@nightly" do
  version "153.0a1,2026-06-04-03-55-06"

  language "ca" do
    sha256 "a3f90ba1086d17e68784502a93936b51f1c035f60267df111559663a34f16457"
    "ca"
  end
  language "cs" do
    sha256 "68e8fe882fb7c49b34075321ec317b7cbeba97b0f048dda77f4e1230a208c52c"
    "cs"
  end
  language "de" do
    sha256 "1cebcc6dfedc3b9ec6c850f4d3bc3e5908c4e237c443fc914985462554bde641"
    "de"
  end
  language "en-CA" do
    sha256 "c5a38eb1f1c2c3e764f1723c0f061296e9121ce19dc8b0524143517b5a331d9f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1a2e6a10d2cc84e8496b4bfb2d89d33ec64f12c7536da0aa97be30d289f56303"
    "en-GB"
  end
  language "en", default: true do
    sha256 "20f738f5d9e8d37300a87e08efd6140c366a358daf3835a1ebcb8a488cc17b76"
    "en-US"
  end
  language "es" do
    sha256 "f20f46746fb80839d610b4a1c595362ebea10d5d684736a2eb23bb1d1ad0d8c7"
    "es-ES"
  end
  language "fr" do
    sha256 "64ddd447c53aa2c39ec15ecaae524078e4f59e79fac4c50c11ac711fbb50bc1f"
    "fr"
  end
  language "it" do
    sha256 "9dc8150813044d0808f411f042cbf28e1cda2f76c8a79fbbb8634256dff59646"
    "it"
  end
  language "ja" do
    sha256 "f522df75d1a1066428bd28bc31ae81668de2c787e93d146ac1f67171584e448b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f3f9a35603686ffca46845b6aa75f6e1685bc97b4183bba234e567d449052a8f"
    "ko"
  end
  language "nl" do
    sha256 "30d62051f1e49d8e1d6355906a4189a797f6e7ee04bb3b38ec284bfcce88122d"
    "nl"
  end
  language "pt-BR" do
    sha256 "baf706ca29d6664c0046f44202a6054f9b8c4e09438d8a9344925b57cd464203"
    "pt-BR"
  end
  language "ru" do
    sha256 "77ba7aaeb82cc423e02f5528c652813ad19eb325f3e0d548a6961070da969c77"
    "ru"
  end
  language "uk" do
    sha256 "cb4098bdea793d72b69c3be67312219ddf0ccef75d378ec53732019092d1738c"
    "uk"
  end
  language "zh-TW" do
    sha256 "5a9e6295f545a503ffc4536b7e5b2040e49b47302b16f1dd6de89a3ebf9403a5"
    "zh-TW"
  end
  language "zh" do
    sha256 "0668ed04310b014b13e526d213d024af0c4f38c25b1cd7932c7e3ececda3ad1f"
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
  depends_on :macos

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
