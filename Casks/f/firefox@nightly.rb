cask "firefox@nightly" do
  version "145.0a1,2025-10-09-21-35-24"

  language "ca" do
    sha256 "40760337571713e16a262e29e85e9661c6f41fb1f947e2db5f4d2c4d0b58b5a8"
    "ca"
  end
  language "cs" do
    sha256 "72d293bdd4258efb650a47dc92105d93e181537ff5a343bbc7684e9ed4e05aa2"
    "cs"
  end
  language "de" do
    sha256 "0aae2d90d39cec94d508aec7630dd3d3916a7b2204b24c6cad9811b6dc9d7a88"
    "de"
  end
  language "en-CA" do
    sha256 "b0df55ea9f3882452d36297dc07a29330f9f8b83accc3af3ec7f07962a032a9c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a5c74e9863334e6ae642a115df2acb385d0a61d3174b71783c2d7069fdd3d554"
    "en-GB"
  end
  language "en", default: true do
    sha256 "60db379e5bc0e8c79bb892ebf482317fa30ed3f527bcb754fd8a004519cb8d86"
    "en-US"
  end
  language "es" do
    sha256 "194b65a57627a9a576176cf33cd39c8b5cd60650cd8c3f274bf31805bb358553"
    "es-ES"
  end
  language "fr" do
    sha256 "257a87646117f327cd394b75287e23f4823a5f7c3800847da2536a621664698f"
    "fr"
  end
  language "it" do
    sha256 "4fbef0ee85160a64aa844c1711eb6423a617e92de4b522ed4e5649dd7eb6d53a"
    "it"
  end
  language "ja" do
    sha256 "a5f81547249037e408228d5b7c151d402bcbad724713d030615ffdb01f1a8934"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "45297e2ad7de48d0e0f9927c14d567e9e7c6bb26b78268271486cc568b85dad4"
    "ko"
  end
  language "nl" do
    sha256 "7bc82f07f8e6afaa6ec1b8bb0db4f5a3392b8e65f2311c5450bcb174197dc3f3"
    "nl"
  end
  language "pt-BR" do
    sha256 "104487dd7180223aaad2c8d866c6227d19f12630d5fe9debcf6961da873b0cb5"
    "pt-BR"
  end
  language "ru" do
    sha256 "54bdd1c294d2f3ac86c9e3c74c170689c463140357cbcb67f99d2734311a3a0e"
    "ru"
  end
  language "uk" do
    sha256 "6d0f18a47cfaab49a72556f52b861e62c9e3891d57954b7b761cef07f21731af"
    "uk"
  end
  language "zh-TW" do
    sha256 "3731b38d19f7fd2ba0c19723a635e581f7d74d91a5dd6c06607b074febb00007"
    "zh-TW"
  end
  language "zh" do
    sha256 "27cc0a504f5a742185774b9b187635382da7fe0158313affcd05f6b4f8b0fb80"
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
