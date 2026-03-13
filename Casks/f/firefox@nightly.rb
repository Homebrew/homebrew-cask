cask "firefox@nightly" do
  version "150.0a1,2026-03-13-02-53-36"

  language "ca" do
    sha256 "76d8e45fc4957e165c011e7f0fb7db930d656c237b8d64d3885dffb0f1a25408"
    "ca"
  end
  language "cs" do
    sha256 "baec15b8c2894e7c5c19b79a9822210a889a59a713906cbae6f3c1a801485388"
    "cs"
  end
  language "de" do
    sha256 "bf2c39ffb392ab992d700af86b5f5b58cdd8054fb45dfe55677daf53c7bf258a"
    "de"
  end
  language "en-CA" do
    sha256 "d0ed16979e1ec82c7d5a4688ddf2e15dcc37752c0d90f8363f8f8109871d2dfb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f67b9ef8daef1c9d5ce8dd19476d8834bc6ff91d978594092825a1bd5f18b7ce"
    "en-GB"
  end
  language "en", default: true do
    sha256 "12c3a4df27c5b77ffa20e2fa6a5fd280ddeb326e00cf0758cea52f6d1a6529a6"
    "en-US"
  end
  language "es" do
    sha256 "61e13cbd67814d867437f7c72143719437299a07b7c9f75256069fa5819a707d"
    "es-ES"
  end
  language "fr" do
    sha256 "fa28450ce0665913e158992aeb64026bdadac415b0e701e7d4a1f64fbf2aa017"
    "fr"
  end
  language "it" do
    sha256 "e9502d458e763e4e35c70310590e0389a0451122bac7baffde4d04ab225ace40"
    "it"
  end
  language "ja" do
    sha256 "d87c05c75767415b69e3793a4086f93992616f6ccecb9bef02e50c99eeb70bb0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a7a9479517fb11d82b3647119744bc9ce3e3e09faea91f0fd85902724fce225a"
    "ko"
  end
  language "nl" do
    sha256 "4dce477469dd4daa6cf8230191154bc26c3ec036361f0db91632ea7f95274c48"
    "nl"
  end
  language "pt-BR" do
    sha256 "b7602b2dcd0d16bd888e43ebb612d47068e9e8febd4879d0a8b1464d5f8721c4"
    "pt-BR"
  end
  language "ru" do
    sha256 "8b2e159078520f5f872dd2ac25cf436749885365b872063b355bfcf9d0b506d0"
    "ru"
  end
  language "uk" do
    sha256 "bfbc9419605c0b7a7f5c82bd7f3c83c481ac8843e79a09522da3d58daea0a653"
    "uk"
  end
  language "zh-TW" do
    sha256 "cf45e03ea83c1c3c826cd789ca6d4f55954a5233c93243fd3d457e163aeac256"
    "zh-TW"
  end
  language "zh" do
    sha256 "d928120171459f9cc414f59abb0ba2e3d4ce812474ab21f9bc755cff585d84af"
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
