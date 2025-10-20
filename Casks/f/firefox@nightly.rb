cask "firefox@nightly" do
  version "146.0a1,2025-10-20-10-42-37"

  language "ca" do
    sha256 "198b8a2506b66238957143651c2a37cf32bd9bb947183654ef5d0714508906ce"
    "ca"
  end
  language "cs" do
    sha256 "70da5f0ee8ae5b3b0b38bfda460e08fb1a8fd061d8641f5c89e07873c7cf2da6"
    "cs"
  end
  language "de" do
    sha256 "40b356858cff7af12c17451e4044efa684032cdc158963ed1f5f7c270a05cbdc"
    "de"
  end
  language "en-CA" do
    sha256 "414d23218daee7ee01671a03473018a56c8a922f517dc6f41da35043a50a1c19"
    "en-CA"
  end
  language "en-GB" do
    sha256 "199fc3ecbf9acdca7db53546b779e6dd6afcda2bbc0c12c2b4551ce912b7a388"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a7a1f23a8b9ed7278f76a70297a370a2328cc656eee948cc89e55930f0e006f4"
    "en-US"
  end
  language "es" do
    sha256 "f422a6525ffe7d92b6cd3c7ee843bb5a13fdb3bde0bdbfc30ebb08cd230c8b33"
    "es-ES"
  end
  language "fr" do
    sha256 "00544f64b1ec193aad1f33e961cf3b8c7b44f8bf7432cb19e31bd0b17e496695"
    "fr"
  end
  language "it" do
    sha256 "9f62ec83142716512fa7f95c32e54a2ea70df379e8af9a03c09e9d2a58a0ac5b"
    "it"
  end
  language "ja" do
    sha256 "4ae5758bad151aea33177b9088e7bb95bdf340d29002dfe52029628936614748"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "276e2ea34a6b0e9fcfea8c196490566bb889b8ba7dd262dffd91b9715148986e"
    "ko"
  end
  language "nl" do
    sha256 "4c733462bf50faa9d39a8e480a852cd177fd7a6a8234d7c336382e09c51fb961"
    "nl"
  end
  language "pt-BR" do
    sha256 "aa8f733c264efd48870c31e1cefb5ec78fa4287a65a1fe8cdbd11cde0ac99829"
    "pt-BR"
  end
  language "ru" do
    sha256 "51c1523d8683326a6e65bc81e4bd7b49a1b72a70867b909e425dabf969791e40"
    "ru"
  end
  language "uk" do
    sha256 "ddb18c4085e6fb2936d1d54f7674b33efe6d8c8267cbefcbbd67739bc5a43a65"
    "uk"
  end
  language "zh-TW" do
    sha256 "b04bd41104d907ebb8193e980db958b9ce9964adb60410c084f792dd98bbc7a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "e671673db6387463fd2790fee5e1a6fd54f524cd07d793d3645b31827437d270"
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
