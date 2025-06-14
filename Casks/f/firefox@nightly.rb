cask "firefox@nightly" do
  version "141.0a1,2025-06-13-21-13-49"

  language "ca" do
    sha256 "0dc818ecfeab6dc56f01bf2dd18ee268b8335dce7dcd0307b4490254cd4ac707"
    "ca"
  end
  language "cs" do
    sha256 "69d638ccb2e54f8f5805b045d1d8249bb25d034ac91f9cd23c3d48f78a965d9c"
    "cs"
  end
  language "de" do
    sha256 "a5cb410a4578369a7523fcb07e23aaf5464e65217db44b044bd36addda5687fe"
    "de"
  end
  language "en-CA" do
    sha256 "6e87e9fd79d42279d5a712e01932e95acb514df1656efd6964d1122b05766b68"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7c7928afbd2b27ebe25f74d2821af6bf6f20551bf479a7307fbe2f35e1ea61bc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7d2be1bb6af198ec9dc65910b8799b80b161c6830818ab6925f0cbaa2ad0d1a4"
    "en-US"
  end
  language "es" do
    sha256 "671d9ce34c0fd79df931ba5bb4da564fbdf66fcd7d460fc486adc2ae08c7295f"
    "es-ES"
  end
  language "fr" do
    sha256 "443e88cef69dbca7a3010fd7eae5a3d99b1100726696ccd503df3088e9f08ef3"
    "fr"
  end
  language "it" do
    sha256 "abbbe9055d0e5e83a0ceffd149fe2127ce2892f1437b632828490ec7eada9018"
    "it"
  end
  language "ja" do
    sha256 "7a2598c7b55e662965b1ba1be7a10f3c2b4dcd7d3885e5c8e77e20701aa489de"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b8b85070e070b6a0fdd63cba5b546eee21c683e291366c4aef333770a98cb4e2"
    "ko"
  end
  language "nl" do
    sha256 "4018292c622c98832a95639f392f0531ad7d3bdac0b4f8f2d4d1066f39133ee5"
    "nl"
  end
  language "pt-BR" do
    sha256 "0050dde75bba235a1cf7f66f121009a7718188202cd60fbc1abcf7b3d572f8a7"
    "pt-BR"
  end
  language "ru" do
    sha256 "5ed2666d13b922d14c645127df3f762c66363f652414b0f6ba4ca442ad51287d"
    "ru"
  end
  language "uk" do
    sha256 "3040ec77405f92733bc3caadfab308219431adf7067236015e9900605b81b7b4"
    "uk"
  end
  language "zh-TW" do
    sha256 "5cfbb12eabe9e6059657d9895f0d43711f51dfb698b2468dc5d30d2d3d769d16"
    "zh-TW"
  end
  language "zh" do
    sha256 "e296c5d0c3cdce353ecb926909458de2ad553d62ff57b0a6e7499c1358746f65"
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
