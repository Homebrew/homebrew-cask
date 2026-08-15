cask "firefox@nightly" do
  version "156.0a1,2026-08-14-21-43-18"

  language "ca" do
    sha256 "14d70b657af43b1b33ab9d49af9cb003f40469f0e73ff42f7b55abc698df2f2a"
    "ca"
  end
  language "cs" do
    sha256 "a3dfb4afd4cc70c14824e8843cc6d7692017398d016d32f1698328610697270e"
    "cs"
  end
  language "de" do
    sha256 "c86d6ead073d28ac793fbee975ecd2be8c7df3630f8b99fa7a82d96117f05a84"
    "de"
  end
  language "en-CA" do
    sha256 "e2541120608a4ac7f89acbf1e17b364d6ee98c333ca6f8e2c226a77d98fca257"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6de8fa5ab25d3cd2a227a94e4cbe6bef687e2237214c3709d7f690723b7fc893"
    "en-GB"
  end
  language "en", default: true do
    sha256 "30a1b79e18097028f7a6163587ff51e346d274dea355a59e4cf72e32936f0677"
    "en-US"
  end
  language "es" do
    sha256 "ab464740a1031d822e0b32b1e29f5374f5a6d91605e73c32b1bcb890cf911328"
    "es-ES"
  end
  language "fr" do
    sha256 "faba8fd1767b7acebc669ebfe5d95cb2e23110db9f30ddedb0b7afd9a62db6ef"
    "fr"
  end
  language "it" do
    sha256 "8b6d8dddd3548d2a69f583ac9ef695d344ea4a1fc10944169d50046c0f8ad33c"
    "it"
  end
  language "ja" do
    sha256 "48b9252451833ddf66c4d597f3e7e4514486a6745b1ba97c5a6fd26768f3f1b7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "19c42b5cff9de5bf2181a91d1553d0d62728a482d600d5f982d2d877c4d834b6"
    "ko"
  end
  language "nl" do
    sha256 "818fefe470110162918f9b464441f2bbe9c018298de36b175ca908d18829ff7b"
    "nl"
  end
  language "pt-BR" do
    sha256 "f86478c9450f7fc652e504dc0eb56befd43260e918d4011e1e0a8f6979e225e5"
    "pt-BR"
  end
  language "ru" do
    sha256 "1ecb3a5a5e1789e46170c176157cd2b3057ff419262b273f7b8c5d4fcf06269d"
    "ru"
  end
  language "uk" do
    sha256 "f1df93ca16faf97d5fb9a6eb88e1cbfa1f34f54f5ebf5555891f3cf717ac24c1"
    "uk"
  end
  language "zh-TW" do
    sha256 "2787cabb013dbcadf314f391c6325ab3cff8c54ffc6ab0213bbbfa3d85c744ca"
    "zh-TW"
  end
  language "zh" do
    sha256 "0e76a8880d52b1aa415ae09248019728f6af23768e5a25078e29ab092b839773"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
