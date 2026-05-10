cask "firefox@nightly" do
  version "152.0a1,2026-05-10-09-46-26"

  language "ca" do
    sha256 "de80806392e7789645f6ba8ee89d9e50905eeac9b0a311a2dd71cfce59350f60"
    "ca"
  end
  language "cs" do
    sha256 "5548642459259fabdeaf552748af3cb2a2cfa0ff1d3f1bf7180f2462b9413701"
    "cs"
  end
  language "de" do
    sha256 "849d42a30ea0d172a88d483f21c02d1fde643f450b303209aa80a00b7cc0c804"
    "de"
  end
  language "en-CA" do
    sha256 "47ad0c1ece4671679aafeb421dab980b22eb7141ec0018a293eebfdf08738710"
    "en-CA"
  end
  language "en-GB" do
    sha256 "414a08f383136ac41f4a3955211d8b35f414ebcd840861e9ad834bbda21f0be9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "860fce5c31467f40474d7b3f74a6f97a2d5bffb29e20de84aeb7fd78168ff43a"
    "en-US"
  end
  language "es" do
    sha256 "e0d058130f2071c400231fb19c40c3fe80fb6e03199070fe8beece923751a44a"
    "es-ES"
  end
  language "fr" do
    sha256 "8b10f2c6b0fb08d04fe120b3c5254a585301d9df78b565f24d3f38a7db359f7d"
    "fr"
  end
  language "it" do
    sha256 "04792362826ebb719f2f6f984e230a98179cf05fc87022895c0048b6a9e0798e"
    "it"
  end
  language "ja" do
    sha256 "91ca4b530a78be551ff5842d182b92fbaa238f3aaa3b122d5cde3f29e2140e1f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dedd70d967d25d4714cb55006a0cd4f79f38ef04c2912734bf3f326a9aa5ccc6"
    "ko"
  end
  language "nl" do
    sha256 "abc51bfb9a4883fa52d61f5affda2f8631a564a38235fb177a2e11f87829ecb0"
    "nl"
  end
  language "pt-BR" do
    sha256 "4c5fea037e1bf1abe1f76673552ce85374c6780e4e3aade8b02441e189e86438"
    "pt-BR"
  end
  language "ru" do
    sha256 "6e1a92cdbb874894786f2e4e27a5ae6f71c29b68bb054cf295de5977cec2630d"
    "ru"
  end
  language "uk" do
    sha256 "e2367c3ec6551d236edad6bcaee168c781dea8b58508a303655e68baab96b962"
    "uk"
  end
  language "zh-TW" do
    sha256 "bd72001d7af6d26d2b323cc616aec2cfd3f166809f0245d3328ed991c13da98a"
    "zh-TW"
  end
  language "zh" do
    sha256 "4775ebaa95d63a6ccb55b0a1d047facde868de6b499801d226aa0d8e5daff9ad"
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
