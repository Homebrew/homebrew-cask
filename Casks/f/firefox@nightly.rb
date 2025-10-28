cask "firefox@nightly" do
  version "146.0a1,2025-10-27-22-00-23"

  language "ca" do
    sha256 "c65544c5e9476ba5626d6f2168de668f79a2acf07058e32bfc9f937341333d3e"
    "ca"
  end
  language "cs" do
    sha256 "2a36a40582a19d97e01d0b18961c68ef05912edac928ef5c2ba5f4eb3405d983"
    "cs"
  end
  language "de" do
    sha256 "996931173e34d0c99d4745313fdfcd65853fe1df867e58f9ebaf1ab424ee6cd9"
    "de"
  end
  language "en-CA" do
    sha256 "f0fc0ab5728215c689401d76d7097449aadcb54ce254cdb27ba0ac1665e0e498"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aef33fc166d7d0b3f7c6b9e8acdb49cdd427d621fe88efbc1c63e06e12e83d8b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8b0d1435ae1b31544a6058b395c53391281ca269fa2e68c58da0b875c200e8a7"
    "en-US"
  end
  language "es" do
    sha256 "4c59f98f49794531a8d23527ff37c120fcc3cf4ec90e45513c63566f6ee64208"
    "es-ES"
  end
  language "fr" do
    sha256 "d51fce0df785454bd0f561325218fe324d8cd1b4f87429d04d8f0d48d77c1294"
    "fr"
  end
  language "it" do
    sha256 "d7a6d90a278ee8686cb81283bfc08b0514c0c5a196562a6e581711b3d0dca341"
    "it"
  end
  language "ja" do
    sha256 "dcc722137a1815c1f51a04ce353d7b58e64228c68d9c0874cbbdc8a2e581bbef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "08013533373915eb387e05f2bade9f80e198bba2eeff55faafd8bd5d01bf576b"
    "ko"
  end
  language "nl" do
    sha256 "e3e158c800bf676aea458c4f70e0e5802e539ccae11020ecc0532dd656ec6aae"
    "nl"
  end
  language "pt-BR" do
    sha256 "3f9e869381bcea4336b2c86f3c27cfebee4efd047db3207ebeb4b8f76991710a"
    "pt-BR"
  end
  language "ru" do
    sha256 "2def8fb7b43a90ea138ea35e4210b98dcd67390cb0e1cb000be134bb84c9bf02"
    "ru"
  end
  language "uk" do
    sha256 "d3a37a053e7af4dd866dbc5302b56089400765a237a84375dcdad26f56be6374"
    "uk"
  end
  language "zh-TW" do
    sha256 "8c5b9bc7b06499f3d47baa4ed4e29a6d2c167e73454b510d2ed841eab744581f"
    "zh-TW"
  end
  language "zh" do
    sha256 "02527ccfae44a0157af06a5b83f97685e8f015b3dfba567eaf42934c287fb51d"
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
