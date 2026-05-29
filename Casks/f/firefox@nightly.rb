cask "firefox@nightly" do
  version "153.0a1,2026-05-29-09-16-11"

  language "ca" do
    sha256 "82b9ebfe45cfac32135203baefc88e190da8f8fc1da84e4b399eefefedce40fe"
    "ca"
  end
  language "cs" do
    sha256 "7359a4d33f5611901c9cd9bcbf25b17125ed7ef3e18063d711efe221eebda0a0"
    "cs"
  end
  language "de" do
    sha256 "ea5286cb6208606f9e1337d1266c4fc5c71449525e2e19100e64997e63b16f47"
    "de"
  end
  language "en-CA" do
    sha256 "f84d9269e8e97aaee4ebabd2c9b95c450958da0ee15d300f977a43a1fcc31ce2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "77612cad87d4542919a72af895bcea4c8e228969ad82168611a5fa388f176b0c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a7f40c73c8785804f03a9bf9238f5d96cc3d497389327cbe621880e31d16215"
    "en-US"
  end
  language "es" do
    sha256 "968cd783ce2b9b04dad033d654a1d2388d7d17a2f12b0de7e3db3258b3bdc783"
    "es-ES"
  end
  language "fr" do
    sha256 "cf9d3c45cdc9c139fee9755550264f0eab2af9ee33d8b753ae625987a7295e6e"
    "fr"
  end
  language "it" do
    sha256 "c4f48f0e411d9fd4cb8850c7148ef8be90f22f8c81a0e12848784ee9cb7f331a"
    "it"
  end
  language "ja" do
    sha256 "e5f6908834726e2dce5a2d34e39c36c25a2d3b4824ff514da6a4db10bddbf8f4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "16097f262719f70fbc08b1330b2228b3175c5d75bf0033370d929133dea705a2"
    "ko"
  end
  language "nl" do
    sha256 "9dc33e40de22d69aa59844632ea0ef47fd0aaa2554d80081719a1a1a13033b65"
    "nl"
  end
  language "pt-BR" do
    sha256 "50f1864dc13200cf658ea75e2499341553a5f84dcc3863ed140e15197091e64b"
    "pt-BR"
  end
  language "ru" do
    sha256 "a126cf377c0242dd55bfc31bcbdf1779c00184743c25bdaf37f77ea4d99b9277"
    "ru"
  end
  language "uk" do
    sha256 "7edbe6846d9f9e0e35919098d0fcb7524903fe063e7b534fa6f356630cc7db88"
    "uk"
  end
  language "zh-TW" do
    sha256 "0c8037cfa8a6f5def5fb404b227291415ad5c2973e07b4362892e3f62a928953"
    "zh-TW"
  end
  language "zh" do
    sha256 "4b2ae3fbb20d7e701555b89d290fd790dcb0e107110695070818c83589bd1283"
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
