cask "firefox@nightly" do
  version "147.0a1,2025-12-08-09-56-26"

  language "ca" do
    sha256 "a9263e9e4826f70229bc2f37fc8d5c482640cab3575e2d0f15cc6afee7fbdc85"
    "ca"
  end
  language "cs" do
    sha256 "4601b958dfa3e892fec0cc070f3e5ea6669f34aeea13cd827ad40e77776c046e"
    "cs"
  end
  language "de" do
    sha256 "1f361b40c465ec181fe0c8ca6c57b0c8d71a2029b74543cb32e8df73c1f8986e"
    "de"
  end
  language "en-CA" do
    sha256 "e8358de69a8ad8014d7fabdbdc435d866cd8b5489f3ae305768258e8f41d8b8a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5364e14b2f2341a231f26c21f50f1c744b9dada3a1df6d00a14122c1ed97a691"
    "en-GB"
  end
  language "en", default: true do
    sha256 "002fe9b7fce2658efee779f177dc3b48e5e6bd13d133c1d9a0312f8757033297"
    "en-US"
  end
  language "es" do
    sha256 "92616167ce6a88aa90c9b45c974925144bb5ebfe0cf88110c142b80aa99ef0e8"
    "es-ES"
  end
  language "fr" do
    sha256 "29dcee9ebd3884daab8b57b1de66bbddcd72649fc30c0d620fb7dee64d95aee5"
    "fr"
  end
  language "it" do
    sha256 "195c0e95e201e6d6fdadd3cf69ded4be737ce18af070e04b12dcab1c2d5dd1f9"
    "it"
  end
  language "ja" do
    sha256 "ffc1a1a9d2fecdd5a263fb2e53ff8e4e5942c968ecba117b4c0a5d14aedb61d2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7435ec707fcc822fa03466e0aa80fe700eadbe42deee37b646ba81fb83f28f69"
    "ko"
  end
  language "nl" do
    sha256 "381cf6be3e5e704e7941a5585605241a61064701910d938255c282893023abc0"
    "nl"
  end
  language "pt-BR" do
    sha256 "e410ba047408517fc97fc32eb293ce89aba12b4dc45ce733848bde75e93641e1"
    "pt-BR"
  end
  language "ru" do
    sha256 "cc8c0bc3b8787d2ef50a7aa1da8e4a8502e85a91ec915b90cfce358efb124af6"
    "ru"
  end
  language "uk" do
    sha256 "f81e3487e363ffe804adb621f76a578b46b5df6d621b74080380d4e23a05b424"
    "uk"
  end
  language "zh-TW" do
    sha256 "28cd9f425913337f3c240a7c6c102d9eea8b3ccc4a193c006bc401ac6c53b3c3"
    "zh-TW"
  end
  language "zh" do
    sha256 "caa3bf3ee12cfeb604a57d7087e932a52ce3260ed878984e5b6130d875886ba0"
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
