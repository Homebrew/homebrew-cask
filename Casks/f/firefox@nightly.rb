cask "firefox@nightly" do
  version "149.0a1,2026-01-27-09-50-52"

  language "ca" do
    sha256 "5525c9a1c7c4b3ed05b2e9604b2af20c416a4ad529dc223b0edf4a47c188c0b9"
    "ca"
  end
  language "cs" do
    sha256 "7ebe5c6cd32c3f8c7b7534db1f2d5b1b2956b6adc97da70058146b8dbaf52b02"
    "cs"
  end
  language "de" do
    sha256 "78607b1e43f398ff5e6892e938c31cce56a3e32f3fb21f151c538f58a96187c5"
    "de"
  end
  language "en-CA" do
    sha256 "ce9df7d18a4aa4362db6eb7146ad04507644aa0d3fb422a8dafebc24ded1a79d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "286aba155e0d306bf62927d9d230f29aca12c57864cddadcda8c27a01ccf5d8d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e0a6f0f4c302e2a1fc21eccd49eb88d65b16b964131825e5183f4b67d47325c"
    "en-US"
  end
  language "es" do
    sha256 "283ddae64ab70355e033cab3a13c20a242ee15c193a62b9a778bbe4d8d37d85f"
    "es-ES"
  end
  language "fr" do
    sha256 "c765787004e24a99f64fdc54a51ad0635641e61d39c5abb8b5cb768f46fdfd07"
    "fr"
  end
  language "it" do
    sha256 "d0e594332151a736f999b5395de8d599e2cbf6fb2db93d4e32b992dca6b1cc22"
    "it"
  end
  language "ja" do
    sha256 "42d06a2422e231bdaf0ab89f096763d4f7612347f182a20e136c6bd6c8971d79"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cded75e0e9b900f8aaf10c06061473b9bb2d542ceb128ab8eb8044e34a03a9be"
    "ko"
  end
  language "nl" do
    sha256 "ddd36c16008ba67a91e1a837bb6eac4d18e45b01b815124519271c961ded4793"
    "nl"
  end
  language "pt-BR" do
    sha256 "39057ca18070f719a91477585ee4315c5666f07f4820ad66e8f2ff37d672f229"
    "pt-BR"
  end
  language "ru" do
    sha256 "830260bbd5f06bb7f0c0611f2f79ab9cea3f661ea1b76fd529bb7adfb5f126ab"
    "ru"
  end
  language "uk" do
    sha256 "a95b4c22019e318014ae1ba6115686ac1198dea75cf17c54bc634bcfcff2b525"
    "uk"
  end
  language "zh-TW" do
    sha256 "9a57636cc80351e0b3880fe1f4616f88bffd66a40ef58826248e060c2ef51c64"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f77837b8dc64acbccd28de0c00faf8a48335ed518c0f8b3d201f9a3ccd1cdcd"
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
