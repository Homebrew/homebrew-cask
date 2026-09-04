cask "firefox@nightly" do
  version "157.0a1,2026-09-03-21-57-30"

  language "ca" do
    sha256 "6bbec0dbe8f593203fa369e0b938722d51ea3f0a880686958ed179a3c1e8cf5d"
    "ca"
  end
  language "cs" do
    sha256 "efa96965c32e9b970ae19e9fa3a7838840ed53dbcdc9ce0e0d9c420722544680"
    "cs"
  end
  language "de" do
    sha256 "475083a6be32e7f03cef25c45103c4713efc1f346a71f4dacf973c3b14e5b61d"
    "de"
  end
  language "en-CA" do
    sha256 "1820bab6f09231b09ce6e08e4f8fe443e9b5d5ab098e62b8d10865f031d468be"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bd620af3d80bd0e9a7fb568df31d3722dc520a4df011b22825184bb929b90ce9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "28032cce1686cb7119df5c4d6a68c81e0e261f69ad4c3ea6ffe4ca22d0e4fd8c"
    "en-US"
  end
  language "es" do
    sha256 "b16540c12598f84d3af738d21f849f4b8ca044cc6a4f24d1c3c4c9d8c865c677"
    "es-ES"
  end
  language "fr" do
    sha256 "1b01c2b6cf4768c6694e889bfd258142c571b649219f8bf34aa6834877c48c04"
    "fr"
  end
  language "it" do
    sha256 "808b97aa711736b8d0b3c2578568438bf57f3af05685b2d162e9b4d8b5d13478"
    "it"
  end
  language "ja" do
    sha256 "7721b3a4e9d694d8ad4d05eb2edbb2d4341702f135c62017ad2a5918d1673fa4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fcda9dbac6c6a6b1af6cc99952e6c1886a64e82cdbe0befa460b716ae3acfef0"
    "ko"
  end
  language "nl" do
    sha256 "114f97c0550b09b701f97686eda924c1a4f0f60893c599113f61895d59218a02"
    "nl"
  end
  language "pt-BR" do
    sha256 "6d56d3e0697aad4dc5a92076812baa85f0e9f79739180e54c254213e48cb1c18"
    "pt-BR"
  end
  language "ru" do
    sha256 "ebb1528f1c6066b7bb4fca529b9723306ff7421024fcbccd83ebe332f46c7c59"
    "ru"
  end
  language "uk" do
    sha256 "4dc0f6683496c4eac56e2ae21c1606898774f90ff3fba3a6a8b79803272263fd"
    "uk"
  end
  language "zh-TW" do
    sha256 "3e340383f465b48204faefb32bf8646727455eaf444903b7d804e3f6c16f4d35"
    "zh-TW"
  end
  language "zh" do
    sha256 "003b708e1d8b9bd2477d5cd8355b9ea2721cf3b22fd3bf6ecf26468d993257df"
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
