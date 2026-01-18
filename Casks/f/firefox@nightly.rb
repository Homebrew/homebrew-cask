cask "firefox@nightly" do
  version "149.0a1,2026-01-18-09-00-18"

  language "ca" do
    sha256 "28a3102d25e2c216e06ceb8dbf9e542f5be6b83d12c5323cb406dfbb7377a78c"
    "ca"
  end
  language "cs" do
    sha256 "cd453bdb431a2361887ae7bb62797f1eced228ba2db1a53aa9da6eeec661882d"
    "cs"
  end
  language "de" do
    sha256 "43bdba6858fb40a1a4ac07aee4b010f2b77e77c445c714f620ba1264e1d1fad8"
    "de"
  end
  language "en-CA" do
    sha256 "1be0f5865190061f3ee392c9217e9a55452c534eb8a9988a583fb8a46f0f5ef2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c01a804b3ec4d7dfb1b30053bacdaa13e889f771912d0b12ff0e6066707cbc37"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb980707277b5bebccb5a753a17333426ed4e03920472c1526fab7e37959f20a"
    "en-US"
  end
  language "es" do
    sha256 "663a64674ee521b0c5c592eb21635b80e1e4a7eb2b9b1d58dcfa24cf67e8f662"
    "es-ES"
  end
  language "fr" do
    sha256 "268dd261c9a3c96701497eb7d266bf49fa7ec8384279732d340d5e56f7517884"
    "fr"
  end
  language "it" do
    sha256 "9c8e2c9277fd8e63e41ec7abd2da7909fb51d1cd280eaa001d599291b5a3a425"
    "it"
  end
  language "ja" do
    sha256 "88a4e927e1145bb7f78e32984f201fc323aafb85f6bb272f6dd091a368bbb7fd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d52edd16094ee86cabd18ae883fbf5c7c9a485834027dd22a9496d967d2d3ce1"
    "ko"
  end
  language "nl" do
    sha256 "bc7f07754fb629ebd4d034cc6a20681cc5d870066bd1b3f67640adbf4bc3e342"
    "nl"
  end
  language "pt-BR" do
    sha256 "5aa57fc32033bc2270b568f7ebff7874207956bbf710e4947925c5d33b42d665"
    "pt-BR"
  end
  language "ru" do
    sha256 "1f4dbaf61286b20626e42d0122b15eb67878a9ab1ba29e7d2b2e2fc004b5a68c"
    "ru"
  end
  language "uk" do
    sha256 "f7763a9d221bbbe02eaa52d36229c784673148bbeb4120a31beb5f99fe56114b"
    "uk"
  end
  language "zh-TW" do
    sha256 "b63d553d1e84c5ff409e05c4fa916b8d3ce1b638e976ede3bb40d55547d63289"
    "zh-TW"
  end
  language "zh" do
    sha256 "40a0ee856d385522cc36ce9d8dc8eb66ee1d7a330b1447c067e7366050b37220"
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
