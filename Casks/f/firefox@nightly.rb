cask "firefox@nightly" do
  version "149.0a1,2026-01-24-21-27-58"

  language "ca" do
    sha256 "8982bafa32834b807a1ed47e2cd0b89b56e28613ab9ac488491d47687eacf6aa"
    "ca"
  end
  language "cs" do
    sha256 "e145b07f06a7e5cf429e7391c8db404e90252464bc31f045ef43a8d082b19c9e"
    "cs"
  end
  language "de" do
    sha256 "71de0f7b096e4230f0907237e9d6cd5462ccc5283cc91f69642989ceda698fe8"
    "de"
  end
  language "en-CA" do
    sha256 "2fd0e81ee9d860bd4de742bc634cdcf3655223aaef027ee64311de7dc6dcf5cf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6ce0c2621af2283b6e9a5f680bf6621103779c0753411259bcf42e9b122fdacc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "67345595b10c377a0cc0905fc06201613e7666db74de1cf502597ee847794528"
    "en-US"
  end
  language "es" do
    sha256 "28aaf9fea5fcf29c66dcf0f29ab5961cb46b25408516ac0ac9c883f34cf5e14f"
    "es-ES"
  end
  language "fr" do
    sha256 "703d6f74505043542bfb6bb34ac82f8831529a70f6f253c5ba0d2ffa41a75ccc"
    "fr"
  end
  language "it" do
    sha256 "aed32df2c72849e6c4280a4633a396909ed1b8b62ef09c9d81e3969592126526"
    "it"
  end
  language "ja" do
    sha256 "7cdf6cb1a3e345d45048736814c02cf863018979b074ff74ec8974be1001abfa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e0933ebb6a39541338ee82d73036c3f93fc485690dbc0ba0b52da85952e6c8e6"
    "ko"
  end
  language "nl" do
    sha256 "9894e974b96be63fa90db0ee93b5fe8a38af6c95f1ac17c826b22b65fe1aa1a5"
    "nl"
  end
  language "pt-BR" do
    sha256 "116b99a93506df90053e699a6f3cf6cae1542930534512146fcdfdf3e1edd5f0"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b1c9d768cf052f3034987bfaf7f16037f161dd71e6fcd5186141b720aecdbd6"
    "ru"
  end
  language "uk" do
    sha256 "bb67e81fa06b6b83046c85c6e58b92bde02b8dd3a0b36c32451136b40ded2633"
    "uk"
  end
  language "zh-TW" do
    sha256 "e7feb2d019d6a9f6437ab6067bc7c3fa50374dfc5113a404af4aabb951fe9c27"
    "zh-TW"
  end
  language "zh" do
    sha256 "b9e20c0a8b6dbd0c59ab6cb6319ee73e12f5ae901ca0fc2e5b90714bcdbef8f9"
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
