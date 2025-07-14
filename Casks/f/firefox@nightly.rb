cask "firefox@nightly" do
  version "142.0a1,2025-07-14-09-19-02"

  language "ca" do
    sha256 "6c55651dd3b2eb26e303ffb658ae1563278a308414ed5d430bdd79a29da8ce99"
    "ca"
  end
  language "cs" do
    sha256 "31c7bbbefbb6617702ebe9ad3087e2bfb9b15e0eb5e13a350609ea537131b0ad"
    "cs"
  end
  language "de" do
    sha256 "c6ec4093189c655505f5c7ddbd2cd14dbf08656e7ee2442ccbe823d17505d3f9"
    "de"
  end
  language "en-CA" do
    sha256 "b0de083421d86be82c5deee25fba2172295188a16861c2436cabf5047950d6cb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ff9d57adabf2206d15831e1288fb2e1b3657d9050cfd1a88f8d8f88f06c90f32"
    "en-GB"
  end
  language "en", default: true do
    sha256 "daca2b9ee05087263cfd9fa71a62898e5ba8bde8c6e1bbf4c129ca9532383841"
    "en-US"
  end
  language "es" do
    sha256 "f715a0d835f26c8e58bab6a1c95cb438a2c16257b88d5325e525180c71d62135"
    "es-ES"
  end
  language "fr" do
    sha256 "6ba19354dc0a4b5081923f8abeb1c60b6062aba7d59541b3eeb594667ec720e1"
    "fr"
  end
  language "it" do
    sha256 "e60bd937ad88543e7a8ce45ed976094739c5ba9aaf9298d1d4914431d7766909"
    "it"
  end
  language "ja" do
    sha256 "0993d02c738d0bfefd1995f761a5e267211d74277b87ea23feb9c0935e2deaaa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "07657dbff8c98a2ce1718504d52e823ddf8e4e214c44877e6f10702a4a4b8e22"
    "ko"
  end
  language "nl" do
    sha256 "ae50c0fde75494d1b2dac640a555686d500c2e4b3b6c3cf4bbe3a719af828f22"
    "nl"
  end
  language "pt-BR" do
    sha256 "4e080485217781a02a37c3fdf31497985431251cb7439e4d09601c020a61d1aa"
    "pt-BR"
  end
  language "ru" do
    sha256 "65851f377fb56fd310ffdc287e3e3589d1804de6062f4f44620e6031fadf80b5"
    "ru"
  end
  language "uk" do
    sha256 "c2b2a164f45df03fce5efa72c7320a9479519b9832d387d7261afb624b63f4b6"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc9f0eedaa250933d179fd5dda5016a5a118199fd68327392dfb6e39c89f4590"
    "zh-TW"
  end
  language "zh" do
    sha256 "32ae9091c49a6bde592cbef8d16c6faf46840e72b86c659391acd2b194afa3d3"
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
