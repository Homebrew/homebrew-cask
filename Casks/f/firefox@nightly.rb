cask "firefox@nightly" do
  version "149.0a1,2026-01-14-21-12-45"

  language "ca" do
    sha256 "ad90f579bd8e9c93ac70757d5c46b298873b34e299bbf165cf5cc24f28dd991e"
    "ca"
  end
  language "cs" do
    sha256 "002639ea2df044f61b3470d92b14b00da2e4855fa94bbab333a883e8d1dad73c"
    "cs"
  end
  language "de" do
    sha256 "5f8504f97a4c29b38eedd1ade0fbb17b548f3099d901d9820ef142809d77ffa8"
    "de"
  end
  language "en-CA" do
    sha256 "b8ff68fb25b2317c71f4cb2c28eb3e8c96ea0900d71bd13db4748be1c0b4844d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "02e9ef26ca57e9b4d53538f7da3acb5246a12c2303ca69c2a6c71cf1c10a72d9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5fe2d9903de32da0824cfdc09a4ed60372ae6a6a8252f11143ce17720e9730c9"
    "en-US"
  end
  language "es" do
    sha256 "27196de514a16bc47f4106e1f4901366ba41babc05d6d1cdfe5c483c645a241c"
    "es-ES"
  end
  language "fr" do
    sha256 "3084ed7bc18c671b698d47b50b60bdcfdcb7c7eae587f81380866f8fa23dfae6"
    "fr"
  end
  language "it" do
    sha256 "cce63ca68e55742436810d4af826f3776eeb4f1409002fc513632f9484443617"
    "it"
  end
  language "ja" do
    sha256 "b45d197d117236d2e9ba6338b4af1f09ae077e72191b8b378ed9e95793843b09"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e0368ff2b64dbb940e182d45e0f5ea488611d8ac64e2336aa8530ddde698f2d3"
    "ko"
  end
  language "nl" do
    sha256 "f482dcbde1521752c0c819f4384073bf62713aff10e501855fed8c387d593f25"
    "nl"
  end
  language "pt-BR" do
    sha256 "3dbdccf63695efd9cf0caff008437ed30c76506dff15bc82d1a6fa67d9adbf36"
    "pt-BR"
  end
  language "ru" do
    sha256 "5c615c11c04b00c2d6808122cacfb420fba73a8d3718ba7f351904e4a7833c97"
    "ru"
  end
  language "uk" do
    sha256 "dd55464f1ddc0c234fce75be9b6800ef34ffb47501437530653b5819c0b38f3c"
    "uk"
  end
  language "zh-TW" do
    sha256 "fcdaefa50a8d34825b0a2e9e638ce523cd28a5de5c586ea5f6829e00920b4465"
    "zh-TW"
  end
  language "zh" do
    sha256 "2a4f3ed7a1fb7c1131939a9256ccab662f21bcc8353a77333d4ed85824276017"
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
