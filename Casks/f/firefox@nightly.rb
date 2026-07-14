cask "firefox@nightly" do
  version "154.0a1,2026-07-14-09-37-26"

  language "ca" do
    sha256 "e39993257615d01f61fa962be54d5d476d2d868f289c3ecfcb21d41154c2eed2"
    "ca"
  end
  language "cs" do
    sha256 "48cd8a71f9e3ab98ed15df96a6e3800c5d88c75b0a76cf308f099150e6260458"
    "cs"
  end
  language "de" do
    sha256 "308d9b52f4f48afbc8077a6c14b040863585cc5250eac419c1792d7f0b98123f"
    "de"
  end
  language "en-CA" do
    sha256 "6c21b66af68138bdbe6011e3bbe7c20ba81fedaa74780c7ccbf4f3dac14217b2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6ec00d93d68455073fd14d6d019c4c9e30fdb087fdfbec3f2999178b719220fc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d8297d01df731c314f4768baf748a63cb4626c327b8a0752cd8becd697f4aadd"
    "en-US"
  end
  language "es" do
    sha256 "43a0c08f6a2eec0a2796daa4dd6fdaa1f6f97bcdb764f0feb1391736f406b15a"
    "es-ES"
  end
  language "fr" do
    sha256 "862861750ecc1a569c8a69a7d153e4a9df71e3be7c4b1f4f6634e48410312072"
    "fr"
  end
  language "it" do
    sha256 "698357cd3a4edc7b8f14b694796c55e3b1f9e08700eae4fc6c83f6d3b14e9b9d"
    "it"
  end
  language "ja" do
    sha256 "b3d5349eefc87bdbd985148fa507fb95ad68c6afcefdf669f865eb9c8dbe0d4a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a509db5eb762f8722793375d136e3e2ab91b9d9d5b367f8f08d42ffc7e5b7328"
    "ko"
  end
  language "nl" do
    sha256 "c8b83d9cbee42043bcbd3e52f6e8f141414589dea8f6a80125c471ba6c6a773e"
    "nl"
  end
  language "pt-BR" do
    sha256 "75d7d3ce064e7391f0ec01256c2a8867bed8f8fcabcb7f2c22bca1e07aaa727c"
    "pt-BR"
  end
  language "ru" do
    sha256 "2346fdd8ddbdf678284dfed4a57ab4381cdd747dbc450ffbb3c1de5b4e7333b5"
    "ru"
  end
  language "uk" do
    sha256 "6ee9ca5f7020fb36c8059059568c6ac2a2852e7b7e496951268dbd7aaaad3356"
    "uk"
  end
  language "zh-TW" do
    sha256 "552851ccc5d6ea065da8f2e76ad167198259d30eb5f6859b1447afbd53b530e6"
    "zh-TW"
  end
  language "zh" do
    sha256 "1f811c08614efd3e33be8f4a5cbfe97d0a916c38e08b40b8b51329aee732ea06"
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
