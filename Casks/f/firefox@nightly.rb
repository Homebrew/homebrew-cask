cask "firefox@nightly" do
  version "147.0a1,2025-11-14-09-46-37"

  language "ca" do
    sha256 "1a40adc23c908a22b5fc1baaed4f23415c59a8611bfee92193414d9f59f0f9c3"
    "ca"
  end
  language "cs" do
    sha256 "6d167dc2a47ba8d2af5f6f20ea243c1aa77b36ba0008ff51a5d5fd69714c8de5"
    "cs"
  end
  language "de" do
    sha256 "edfda62c618d435975d10512810a404f916aa26bf1e6c150435fc49c66356bb3"
    "de"
  end
  language "en-CA" do
    sha256 "be09fdc4bde87e4b24ff18d8fdb248039fdc5abdd9fc4f80a146a8e4b0c7aefc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "891d4122b2375619ef17414546293b7d5c63a74b603358e362960e69e72a568f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c45da764a91eb6920cb8b9a65f2f533adaf07d494eaed430308ae0a2a6eb17b8"
    "en-US"
  end
  language "es" do
    sha256 "4e64a6fafc9cae0ec2a8f4e0753a106aefe54a83025ea69d1faf7b2308b87e9b"
    "es-ES"
  end
  language "fr" do
    sha256 "7211f20f38280783cfd1309867dccd8fa7cd7c4293eb5c2a0b58a8094644a646"
    "fr"
  end
  language "it" do
    sha256 "32545b75c2d5d42de87c348d38f2033c4cecd3cef4ce6fb1c2e0b9210e21dc96"
    "it"
  end
  language "ja" do
    sha256 "d480110dfc808f7d882f311a758f6b85074d5728c3fcd6f8577835c41179870f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "15f3ec141176abe30b99a31449b3b0b7a5a1f0cd86fbe2d7319b2e38d686b254"
    "ko"
  end
  language "nl" do
    sha256 "93f135136919f3849f660fd4edc6c2cf37af10b520235fb9a01a2be592de4522"
    "nl"
  end
  language "pt-BR" do
    sha256 "27e4c9977579ce44fa4757e22cc52d7b6be7fe80e8f324dd7fe227a32797c554"
    "pt-BR"
  end
  language "ru" do
    sha256 "aeb20e6eb9c3b0267ca1d565cbd9f52bdb496f0bc1079ed67f313c060f4a527d"
    "ru"
  end
  language "uk" do
    sha256 "3433b74e576e3b98ce58ca86ee073b0fdab9248de660e98f21d6736f555e8e69"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa708713833be87b5e9d179e49c2aab054ffddcd804367cc7ef6026a67a8cf5e"
    "zh-TW"
  end
  language "zh" do
    sha256 "20379f908e31cbfd09f60a2940f667e914a4d65751742bfbb81e826c884218b3"
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
