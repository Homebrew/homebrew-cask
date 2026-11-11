cask "firefox@nightly" do
  version "162.0a1,2026-11-10-21-48-32"

  language "ca" do
    sha256 "d614bba798bf052594c8af83a2269a0aa6bca5874a11cb990f83d57ce4adb6ab"
    "ca"
  end
  language "cs" do
    sha256 "4e06357cdbdb025cc5ffebe36da0ee2c7a63df74fcec742dc974b697190b8113"
    "cs"
  end
  language "de" do
    sha256 "6c536580beb4da246b3b6522522a9aea98a4d61275ba4cc0fb53d849392baf80"
    "de"
  end
  language "en-CA" do
    sha256 "53d2e530f9a72b513b4f4bbd2c6fcc9c9f964d8892d0a4edc07297d012f844fb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "028ad9e1b26c2950b263936d7c368a13d0783279f34467d526f012ea2f3298a0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "69d722878229d015851158b83248eb8210f964d98fd0833efa748b6b4c363112"
    "en-US"
  end
  language "es" do
    sha256 "9f127d6fb3437f7d04a977bb0afeeb9bb3bb86be75a34d4efaf5b1c4e7f4d6a4"
    "es-ES"
  end
  language "fr" do
    sha256 "2f1eedcf251cc5537383813e6eabf5ea8debe4afeda4d22c403f162bce1abcfd"
    "fr"
  end
  language "it" do
    sha256 "08dc0b34c092f69be4253879db09a1b43143027ac126923c89293d30dd16b41b"
    "it"
  end
  language "ja" do
    sha256 "7f4f18cbf2b79a1aac123da01b157f4f74f098c2026b486f9a956bb59deb12fd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "385830715aba31f578faf7181db965698e59786283319292aee6ac00c8ef34bb"
    "ko"
  end
  language "nl" do
    sha256 "f384c0cbd31186307656bc7869f06caecf7be5e02fde172b3968be557b53e54f"
    "nl"
  end
  language "pt-BR" do
    sha256 "3ec6c71283078ada7a82052682855bfa09431f4473c77821aa43761b3bfac025"
    "pt-BR"
  end
  language "ru" do
    sha256 "bb06c7332331ddac993a99e0d331bd0efecf80ec1d5d61c7f0041e1e02494bec"
    "ru"
  end
  language "uk" do
    sha256 "895404915042655a70df3cccc84dba79b68781dc09d0058765255de26975e3f2"
    "uk"
  end
  language "zh-TW" do
    sha256 "5cde383afb98ec9df043fe58dc5ddfc324e8c9b44dc35b75cb996e4217547caa"
    "zh-TW"
  end
  language "zh" do
    sha256 "4c6dba8d13843196a4bdca1ec32cceb268c8ca81c041e25dcb6d910b072942df"
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
