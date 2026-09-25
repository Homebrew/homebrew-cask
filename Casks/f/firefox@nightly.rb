cask "firefox@nightly" do
  version "159.0a1,2026-09-25-09-55-13"

  language "ca" do
    sha256 "790e97a5a1dcb502cac3e14f232c4a026f363f73098111ead9d2fd2e030f0580"
    "ca"
  end
  language "cs" do
    sha256 "707416f63c11ee6ed464ab6473a39d0716ab783ff8ec21f24071c764a02f8dd7"
    "cs"
  end
  language "de" do
    sha256 "c88768fca0578760019107c4be2ca6db87edeb443c72148f068c39af07e157a5"
    "de"
  end
  language "en-CA" do
    sha256 "d5085135106d5ca1670ddffbb55b40e40f2cbc8aadf3475de9b294e14b1ae6b5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b2f7f11802e3dd05ad98201586825070dcf0497dd7899dac39dc312dea83bd7a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9ff1505af3eed5ce426e632162c49603bb7a85fcdab02fdd74cc612dc7b3960a"
    "en-US"
  end
  language "es" do
    sha256 "d7d6c36575a8369c0e1050b7f59d785d8b6292d4b708e472269c40d825ae542d"
    "es-ES"
  end
  language "fr" do
    sha256 "fda43c52dbc7a6e9a12544a5b3bc98159cc9ae290901443fc17ab13edf489170"
    "fr"
  end
  language "it" do
    sha256 "5091159d15111ee54a82c4d0d9fdbde3b12e8c848317e67b63ceceed68171e55"
    "it"
  end
  language "ja" do
    sha256 "150a67ccaa24081c899c07842ae3db9d4e92d2c74b33fae263598672561769f3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dedcb10d0cbf687a6bc5af5d26bcd5240b72cc15857bcfc670548c8d50cb1545"
    "ko"
  end
  language "nl" do
    sha256 "d4d11669c4a8a63adc1eb6a0e731c6b148b9f6f6931acbfd42891ca49d59d36a"
    "nl"
  end
  language "pt-BR" do
    sha256 "15418877aa2a6f546d0e829aaf21a389ad1644ac264c02d75de69d8d0830982e"
    "pt-BR"
  end
  language "ru" do
    sha256 "7e440aad88691033f25d72fb079a4b926a898cd59507adba99c1089f21b90aec"
    "ru"
  end
  language "uk" do
    sha256 "377e743a1b87e4d21b12e5b4c5e5d7e36da28c5f694b0d0f29441e0d3a978ed2"
    "uk"
  end
  language "zh-TW" do
    sha256 "da3beeb4a08c3e3722b264900f22f359d349117e46e092085abe3985c9de817b"
    "zh-TW"
  end
  language "zh" do
    sha256 "f41e25e5c6b85034c5cdc2b1cde2712693bb1801f72b208c410a8330383e1d79"
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
