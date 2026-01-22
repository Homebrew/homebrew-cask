cask "firefox@nightly" do
  version "149.0a1,2026-01-21-16-34-31"

  language "ca" do
    sha256 "7c2ddd11eb031887dfda3e74a8ee8e52f64a784670431463c668a92803fa0717"
    "ca"
  end
  language "cs" do
    sha256 "b5857ed1546f2e8c56a4ca49d961c8f314269d336627179d9cd638fbe388474e"
    "cs"
  end
  language "de" do
    sha256 "11fdd89635c05d34059e8d8546d841d45f76da9b6e38feab02640700fad0e666"
    "de"
  end
  language "en-CA" do
    sha256 "e74f07dece01347193e03853359113b6fb09c59d860880d0ee2ec37e7f6a1a9d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d3eae7a9063f7f34d6a7048b7337c5a65b38e3be115688bc742997456441d4bc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "181d914d220768a992e62ca5d70bc1cc1334edbb96b7bf14c2082c3a2a2297d2"
    "en-US"
  end
  language "es" do
    sha256 "834890e441d2b85fb525f797efcb1838d38d0a13765e19b8562de3e520520165"
    "es-ES"
  end
  language "fr" do
    sha256 "a91cd1122d4efa08edabd5d88f58aa08dd05b330460435affb75cda9b23d5f85"
    "fr"
  end
  language "it" do
    sha256 "5e3ee836d7716e069e96040c74c3deb989077f7481933b3fe8e072fc55d7fa9a"
    "it"
  end
  language "ja" do
    sha256 "e506ddfa77dedaf0df7f4fa717f0694561b25bb6dd84fec53f039e4aec895fb2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9e62ce72944f3bc143d72b5320a09ff6384f6e7bb9496060d973ff0822cfa7df"
    "ko"
  end
  language "nl" do
    sha256 "aa59a0fd48b0cb3677540b11a378d64b7d5dcef29314da7179dd13dfcad0b332"
    "nl"
  end
  language "pt-BR" do
    sha256 "ac15075e66d9709c169bf2e032b7abe50d4d726c30ebffd80ea4c8ebb325d056"
    "pt-BR"
  end
  language "ru" do
    sha256 "efc8ffd8ebc26662ddb746a4bd60b63972aaef0b87eb8adaa253262ed14776a5"
    "ru"
  end
  language "uk" do
    sha256 "0da791047ec39de6305a5ef43dccfc8714d6ac70a913b362a16f2c56333da8e5"
    "uk"
  end
  language "zh-TW" do
    sha256 "8ffc1a940a7c71904c2a189b28817764388184af3456179bc493214c73d7714f"
    "zh-TW"
  end
  language "zh" do
    sha256 "92067b35ba8047d27a8918504230cb18a099f88f461d1c114e13cafcdbfb17f5"
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
