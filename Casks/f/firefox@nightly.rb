cask "firefox@nightly" do
  version "148.0a1,2025-12-31-08-36-55"

  language "ca" do
    sha256 "d96dd723f8fe3b7fb4bf3ba5a6868ede209210e415088d7e1b69efcab60ee6bf"
    "ca"
  end
  language "cs" do
    sha256 "8805fa1a70c466225f2c58633e10318785793c0feedd681e7e7b11d76ede02d5"
    "cs"
  end
  language "de" do
    sha256 "da5e27adb2a2092faae73bd8556b233b8e4058d19d04807ad9f161055041b4e6"
    "de"
  end
  language "en-CA" do
    sha256 "9f6fec973c2b4a51507acf29d9c3f58812339b1713d01239b19ee6eb15d7f006"
    "en-CA"
  end
  language "en-GB" do
    sha256 "79b82afe73ba68ba9cb1c5b40d2fe13b96d3fa17614421269cb75fc28dd21583"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71de51bc204137209a712e0c475ef29466068ab398b0e70954ed432f03007327"
    "en-US"
  end
  language "es" do
    sha256 "24feb75dabb835cd3d4c4c85b56a43b4faea28caa64e22e1f01a6d2f4b6d94da"
    "es-ES"
  end
  language "fr" do
    sha256 "047629bd1a5583f918a210ad90506796e1c8416bc9679614a8b474c9c1691a16"
    "fr"
  end
  language "it" do
    sha256 "1b6229b89378b595cdc571bcb4bc56abe6357a5df4397c539ba9e37f9f682d40"
    "it"
  end
  language "ja" do
    sha256 "efd50571f1de6ee3182b023c5d3c3e50af5d15f93fd78ec6fba62e295c783f23"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5f299a91aa217c8c9a6d78c1205f391383ca5b631acf84782b14251cc70618e0"
    "ko"
  end
  language "nl" do
    sha256 "6e438faa12919a99aab307bb51036ddd1e422e181ee23788bdf16cc98bf26f05"
    "nl"
  end
  language "pt-BR" do
    sha256 "931ffe5eb66bd6a2ef4afd8cda44cb18db4ad9d63d6de1546c8d707d8c553a3b"
    "pt-BR"
  end
  language "ru" do
    sha256 "ba54fc0cf36883e40d684d3f17a7449ae2d2e21aefd521b0240a6bde2b2c58a1"
    "ru"
  end
  language "uk" do
    sha256 "db350e50e6d5c2032425ecd39091e5935dbff68401eea4d1107d46eecf3f8ad5"
    "uk"
  end
  language "zh-TW" do
    sha256 "26554a2d95a28904eb66a0d5b3cbf49ce07d290f92129802667ba77d05b911e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "8fc797039184acc307a965729c876afcc1c3944b9f6a32a06dc161ffd27434ea"
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
