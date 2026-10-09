cask "firefox@nightly" do
  version "160.0a1,2026-10-09-09-53-51"

  language "ca" do
    sha256 "c9ef3ccdb2d33f852e1f5daf5190aa14c0109cdabe7a68309bbc65e61daaeb06"
    "ca"
  end
  language "cs" do
    sha256 "9a54f8fc1f368b64d346627f272d1e6568186f4057aef32f3b319763adeac657"
    "cs"
  end
  language "de" do
    sha256 "5e4b2bba291404e058bd63ec968fe5b9851faa7ee4769ae3e265bb7081ce0d2a"
    "de"
  end
  language "en-CA" do
    sha256 "3595e0d888906013b53089118d78d0e5f4fb71952273f2bd772ccb53e677034d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "95cd803cbbe879f2baced17e8b7deb3c3199043e01cf6671bc32624df49cfb75"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f531394395f397d5166647f1865b2e20ef38a0b41441765230d66772909055f6"
    "en-US"
  end
  language "es" do
    sha256 "d7528668016338a0cc7b09518c4badaa024ab47eb75e745c097ba2ef393e57a6"
    "es-ES"
  end
  language "fr" do
    sha256 "30b2bce483632d507adf86d460b704cbfb9fd1f6c69426ec45749530c120a18e"
    "fr"
  end
  language "it" do
    sha256 "9dd88acd6712e50f569feeb9495233fd175a7d9eb3d452f7146001cb6c18f01e"
    "it"
  end
  language "ja" do
    sha256 "274eb6456a4f9e9b694fa6b38e2174ab9fc2fc77700bb8e54918bad80bf43414"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4fbe0f7d234df28506b34b32f46efe9f87ce7260ad34334855b7437c7104c9ec"
    "ko"
  end
  language "nl" do
    sha256 "6e1570cae9a57529f855c5fd7414b91ca384518f6e780197526ebb525887955e"
    "nl"
  end
  language "pt-BR" do
    sha256 "9d5e00e5f97045b57f763b01d103f8e3ebc2d217bcf4e5e4016c4aa36b05e499"
    "pt-BR"
  end
  language "ru" do
    sha256 "7d665652f08b9c0bb51cb3dac0703c0c7f37065a046a0e0896e02f6c4ea356be"
    "ru"
  end
  language "uk" do
    sha256 "989fc48c04751089a88e0b4832cb4f08333050dacfb1e8f5d48423fab93f1ade"
    "uk"
  end
  language "zh-TW" do
    sha256 "443b8662439cfa8bbbd98a4a0af5b8ff6d83cee8b6f93ba26ab1d13c382ab2de"
    "zh-TW"
  end
  language "zh" do
    sha256 "d1d76f1161100b4f033fcf38f204d2421505eb0ff1b903369d78b46972709f85"
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
