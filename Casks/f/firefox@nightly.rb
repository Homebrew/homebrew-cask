cask "firefox@nightly" do
  version "153.0a1,2026-06-14-20-18-51"

  language "ca" do
    sha256 "5436ad317a8269fa52aa669c2bfceab7e17465d7f69bef1879210ee7dbb3edf6"
    "ca"
  end
  language "cs" do
    sha256 "32d792772fec3bc728c6d619478c61506c60a5bf811fd9bc1688b9c8d72983f6"
    "cs"
  end
  language "de" do
    sha256 "53a04fcb4c51fe495fa4a7177885ec107f71a48c13529d03ef9b5329f508dc24"
    "de"
  end
  language "en-CA" do
    sha256 "0eae12bd6a36740853b1326e33a89760e23b84a57d4edc93f4db2eba59745d17"
    "en-CA"
  end
  language "en-GB" do
    sha256 "294cba3b7e8dfc720ff0e9585f004d6d6855a1596c84f2014f53026aeaa05a6a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "83c0fc8213e9f457851f9c2d93e6ec39402ab21a31ceea84fadd6cf7d5b9a2fa"
    "en-US"
  end
  language "es" do
    sha256 "344ec3daa81839634c1eb730c3d9ebfdec1452e2099ce93848cf83dfcf20c657"
    "es-ES"
  end
  language "fr" do
    sha256 "ca2bef9a0b2f19bfc50f7fb7fe31f258910056197c082dde9b0193bd1252b70c"
    "fr"
  end
  language "it" do
    sha256 "b33defa93312f99dab5b43a9b0b2cd9d7c163f9043a261b923659f604698e982"
    "it"
  end
  language "ja" do
    sha256 "7ec428e77992d53fc6cd009fed8fc366419493d9d0f705ba5faa92c83dee3d3a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "863963669090c8afb1601a04e02728aa7bcd2d448696e6f967948cc75e91ca1d"
    "ko"
  end
  language "nl" do
    sha256 "a83ee9ed41193134e4974a88cd47414b3c000e472beaea63d9b4dc56b365cda1"
    "nl"
  end
  language "pt-BR" do
    sha256 "06f96d3b49a47b730b7da50d165cd4a45683d114b01a9cb4d816aaf9e127d050"
    "pt-BR"
  end
  language "ru" do
    sha256 "9812f7b46d9e8212a1d3a0f1f4c40b6a9f0efc856049df733a8d2b5300aea8d3"
    "ru"
  end
  language "uk" do
    sha256 "67ec498c38a6a4c1dd9e0037667ff0bc246ad703ef21ab75600c206ab58cb691"
    "uk"
  end
  language "zh-TW" do
    sha256 "e95326cd4fc358e1ff3f5c35afa43b68875cf6fd36ed241e309d9b59089946cb"
    "zh-TW"
  end
  language "zh" do
    sha256 "5cfb4d27dca26580bd01147e415086ecaf1f549ef2443f824d38e8857a9ce4d0"
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
