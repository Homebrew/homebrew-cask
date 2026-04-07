cask "firefox@nightly" do
  version "151.0a1,2026-04-06-21-33-46"

  language "ca" do
    sha256 "2ea9a16a9cddfad6e9cac677c2ff0538aefafc8303e80d5a3cd7886a77609e08"
    "ca"
  end
  language "cs" do
    sha256 "4912786b175b3ea5d6f0113b53a0b30e25c8b70ccb3c6bc9785425663a34a65e"
    "cs"
  end
  language "de" do
    sha256 "cfc1cc4d7ffd3f65fee53d1cdcba44949f3dbb82511d5012ae2ca4eff75e6a88"
    "de"
  end
  language "en-CA" do
    sha256 "7145a460b2ae8711df83f6760d54e03b016fa1f9817f5e83c3008cd4b9be3d4b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d2cb094da5813218b5d45f0831b931d0a6c0bab083fc845e6c296e9e9bdeb418"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3b34c4096980c2365332e97b37479fbd7cf60c698fcaa04883567ce776538c98"
    "en-US"
  end
  language "es" do
    sha256 "32669d0c9d1827863271bd315ff2409ca82628d942ae9b6837d69efa418fb0b6"
    "es-ES"
  end
  language "fr" do
    sha256 "443eba222b2cd66443f3db2502d2ed4588d028d9560839e7297e9d67812e4ce7"
    "fr"
  end
  language "it" do
    sha256 "1d1aa84b9fb51f42b77bec25807abb3ac63154795417593b22a71b69c6e97136"
    "it"
  end
  language "ja" do
    sha256 "6c424dfc1f7c2fd9eda8ac4f3cb37265636a6c83e6ac1442c66a6eae18b954e9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a9ca8df6abaf9bf3ea5df7735a603c7f6f97de5a926b6135e34a74ce40e8f4a9"
    "ko"
  end
  language "nl" do
    sha256 "093284c4eed200f59654589836ce09ae5a5cb4bfbd6dcd089a065a4f4b3a87c0"
    "nl"
  end
  language "pt-BR" do
    sha256 "ff3e4d074bc29988e73a61ac1653530d2e549bcea12c4998761addd54d600ea9"
    "pt-BR"
  end
  language "ru" do
    sha256 "0a07c92ec67da3358e3e3ed849fbf77957279fcdcf5f60847339faa21a72cf99"
    "ru"
  end
  language "uk" do
    sha256 "ad879f00e9e6d5499e5b87d4355a15fdb54dd3a91ca6358271c58005550c35a0"
    "uk"
  end
  language "zh-TW" do
    sha256 "f2a374ca47e8a20e578e181cc09308678559aa1307a4b4df13f32d0ed8ecf40b"
    "zh-TW"
  end
  language "zh" do
    sha256 "8a5451aa04d2575521e8e429c87e495192a493fe521671d29e176ab3e8113226"
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
