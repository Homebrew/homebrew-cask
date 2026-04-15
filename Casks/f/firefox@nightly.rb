cask "firefox@nightly" do
  version "151.0a1,2026-04-14-21-13-44"

  language "ca" do
    sha256 "b66f8869eef7d136b359b4652133420be6af1cd9f5f00f1c9f1d88105fb3440d"
    "ca"
  end
  language "cs" do
    sha256 "0bf1682bce55287eeabf71fa23751ed17bc461e709e779ca379c5c5ce39a0c9b"
    "cs"
  end
  language "de" do
    sha256 "9b12b54f0cf81703661c8d63ecc222267d83b01f6e9f4eb2fe85cbb72f4e3f29"
    "de"
  end
  language "en-CA" do
    sha256 "29e14fd6d062fb2a78d2f237cc72aca351f7f80880c08c7b97dc23f2a76725d6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "049986d46fbe6818a828151d2ab4c7f0d070f1cb9d0a5d5c2b757151e3301162"
    "en-GB"
  end
  language "en", default: true do
    sha256 "504ee325aa1e1aeb9a320ebdeaf7d73fcc3abd2e1a983523c62c4d6b0ca5c2fe"
    "en-US"
  end
  language "es" do
    sha256 "d75b4e8e2e97e98cab5a0fab06c9d54c3ff1a6b421f56146b228759920986171"
    "es-ES"
  end
  language "fr" do
    sha256 "971897dd4f8af00b4b376b97ed8c717fe1ca1619c150a674c06690904d4ad720"
    "fr"
  end
  language "it" do
    sha256 "f2980caf917a9bb7348371443ed45663e346be46decadbf993352d090d2f6316"
    "it"
  end
  language "ja" do
    sha256 "49746e964c339c32ee17db8c44c37223d59c1149a5a4711f6e3272b179b26022"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ec7ba3a422751469ec535694aab1688d548f136e75bdb0a2e917ca4e609adb72"
    "ko"
  end
  language "nl" do
    sha256 "7deb1e3f3d8b5991a0fab7f8360222920c903a7d5dbc3c8603d8e82a9d28bdf8"
    "nl"
  end
  language "pt-BR" do
    sha256 "0e3a3bc874292a1147dc5488b359ff4864d401e007c4b8702195c7c82dfa74da"
    "pt-BR"
  end
  language "ru" do
    sha256 "1d40cd99a9011d1cf87aeef4b67b3d6cfec64aeedb9607e5f211b311468b8aa9"
    "ru"
  end
  language "uk" do
    sha256 "249f5d4ffeec88f760b113c0fe352299e889054b2125f4fd1c061d909ad4b362"
    "uk"
  end
  language "zh-TW" do
    sha256 "46b8655dfbb1677219afbbbdc91ec0916919a57015096aac099bb6740129f455"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ee5b842ad40a21036129d51bdf0acd85480b6cdfdc86dc61369faaaf8dc31bb"
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
