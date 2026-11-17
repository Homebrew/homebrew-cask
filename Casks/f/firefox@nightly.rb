cask "firefox@nightly" do
  version "162.0a1,2026-11-16-20-42-39"

  language "ca" do
    sha256 "42e029723a31a9bc230c2602d34b9ee6438b17a2b83293bc2cda6901cf1c6eb6"
    "ca"
  end
  language "cs" do
    sha256 "6a53818aa86413739719a7249303b6b91e501925519acf6147aa3aea79be88bb"
    "cs"
  end
  language "de" do
    sha256 "6fbb59844a9ae8371c59d2f988bc5c9821f2e5d5f2346d8ae17eb5c50c4a40d1"
    "de"
  end
  language "en-CA" do
    sha256 "a5b8967bece5410a9e9b988c4bf4bafa4a8804b7e48800465e25f1fb26149bcf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "55d36663f630c4e33736f64f55bae359a10567720d9ec58c35b8d013bfd372df"
    "en-GB"
  end
  language "en", default: true do
    sha256 "377d6db8e22c5c18cc0eb47186967ae2dd17298b3c439de656b11e0e732ee14c"
    "en-US"
  end
  language "es" do
    sha256 "7c2899585e0d5838ec8e91f87ac2d96bffebe4204518804e7008930b4eac529c"
    "es-ES"
  end
  language "fr" do
    sha256 "91bbb5215fee6d5f258084756efa81120c5660b38a33e2842a38671333443c05"
    "fr"
  end
  language "it" do
    sha256 "c52ad03ee65e2f47df66267635f1ba56905e505c3cc4d6fc0b5ff2d60ca72660"
    "it"
  end
  language "ja" do
    sha256 "b8f6c05c21a23f45ed062b47971f66f629bc23ec84b8d837865a6ba0afa04b15"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d74f170928960c3f8d1bbf23e99542545d88aaad0fb23c74a6e1fc302a20d91d"
    "ko"
  end
  language "nl" do
    sha256 "7889520e1c864acf8f45b383adce7fbc6cea0d1c7032423acda898035682f7ee"
    "nl"
  end
  language "pt-BR" do
    sha256 "837d7c6f093351eaadd80f7ce365c4f6e911379c36b7515093a520f2f8f4c168"
    "pt-BR"
  end
  language "ru" do
    sha256 "24a9790db94f6c54c28c2f7b425a9bcf41132a4f745867463f56f177f3aef933"
    "ru"
  end
  language "uk" do
    sha256 "ab1b09a70e7e5dd22bfa4fd0b3b6b2c3ac4617732be0c280329fca73786dccd2"
    "uk"
  end
  language "zh-TW" do
    sha256 "c91dedfe0b30a82fbf99bbbbe57782183554ffe6ad7f6929fd802440f02117fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "f7c8592cadc45a25ea364c46aad7613a16d05a4826c8435f702ef67ded320454"
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
