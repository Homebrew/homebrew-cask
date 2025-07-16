cask "firefox@nightly" do
  version "142.0a1,2025-07-15-21-20-43"

  language "ca" do
    sha256 "d036600dedd4a100a7061e7867b3d98698a31161718d6f56250418246a95379d"
    "ca"
  end
  language "cs" do
    sha256 "a3aecb2ef6a3490db495d9cadb5d572e1968b41a18fe39f9fc958547db8b64cb"
    "cs"
  end
  language "de" do
    sha256 "0518adf0aebc609ce49053935a0991a67e2370708a4ffbb0bcf3b73b5dedb8ec"
    "de"
  end
  language "en-CA" do
    sha256 "bfd7a85f0e7f633fc4aaf803009c2b29618f6050f4e09ac0f2e0a574fe8bc734"
    "en-CA"
  end
  language "en-GB" do
    sha256 "384b4c373ba47470f76f2247fb0e208b71cf33ad489e3c3a23641de5afca99df"
    "en-GB"
  end
  language "en", default: true do
    sha256 "303fb947b13bdabd3443a6a29713fa8e08274ccf523a5b3322ba8bac66a80228"
    "en-US"
  end
  language "es" do
    sha256 "0a11528922faaa7fcc129f10b7c4fbcc3caa780efc6803f7de25cd4f14a460bb"
    "es-ES"
  end
  language "fr" do
    sha256 "2e7f65ba4c0ac5313a978ca14e7455ea7065d7141d275d1acf969a14201b14be"
    "fr"
  end
  language "it" do
    sha256 "c0e40f7fb6da8acc76afe08c769f826b6dd384d7eec318b62ec137c9effb63b2"
    "it"
  end
  language "ja" do
    sha256 "d363811f76a7827d1017d141373f51e2ff2441647cb1e564c9bbbaf4f9f3fd43"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cd71652b9dbde384ce92a198f748014e59fdeb9b1dbc0e13837af2674437593e"
    "ko"
  end
  language "nl" do
    sha256 "6d364592e3f6d30c89f90129671b554923073f87ec33605bc5d1316326dc8362"
    "nl"
  end
  language "pt-BR" do
    sha256 "6523ab2c0e03a80c23da6b1194e87537e2364fb534fe6de428584c7d1bf57cf5"
    "pt-BR"
  end
  language "ru" do
    sha256 "44b1774362c0a4989c96a866e4f281c12436b121addf1f824bdb1f79f6b5b763"
    "ru"
  end
  language "uk" do
    sha256 "b863585d42a97402db033b36541c040bda7b20945669a45c55c734abb92fbc63"
    "uk"
  end
  language "zh-TW" do
    sha256 "14eab30589e2c8ed490ed4dfc7fd80277c73bbc54f5c2dc89531d53d53cfdc7d"
    "zh-TW"
  end
  language "zh" do
    sha256 "1569fc7b6a0239f8d56702f464233015720e2f736ad5123196fb6d69a97a527b"
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
