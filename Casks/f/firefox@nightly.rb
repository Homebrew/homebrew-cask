cask "firefox@nightly" do
  version "140.0a1,2025-05-05-09-03-49"

  language "ca" do
    sha256 "7e393abce80d8c0cdd44e3cfdbb7cdd45a2cff46ef34925dc58fc4784ff380b2"
    "ca"
  end
  language "cs" do
    sha256 "557b5462619753c857f61ea5f2ef5e3aae51b1a2dd50bc1d787e2e46717a739d"
    "cs"
  end
  language "de" do
    sha256 "e49571498bb4047c7b50f2a5d4d00743aa0b6b451f2a769728c7266e987a4057"
    "de"
  end
  language "en-CA" do
    sha256 "4a49386e9f0b364623f07fac9396458d1fed79b236ef34c75a2dea8a2dc6a675"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bc04b75112c6832d314ccda375ed091cd6b4e8153cc4822c5966276d62783217"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9507970c18185e3ee071a28e15460b74612dd3a732ea88d64c6d893e1e6da455"
    "en-US"
  end
  language "es" do
    sha256 "3137c92936b1876e8af91ec07a4d03d28073e6bc1f10e875f5c2596e2a90a691"
    "es-ES"
  end
  language "fr" do
    sha256 "f14aaa73b164da5dfb28072a07fff625f396e683c7f41e5d12be9f8aba77a21f"
    "fr"
  end
  language "it" do
    sha256 "440b37c23b92574d10c751144f516f9ce602d33988d6d65bc12bf5698845c5a5"
    "it"
  end
  language "ja" do
    sha256 "c70d1b3d76e9d749e13ec0affca454edf9e789007ecf554a54c2e71f149ecf5b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e84a3db53fa652f22e6e20f65b478d9df64ff6748efd935e91a57d8b18834f15"
    "ko"
  end
  language "nl" do
    sha256 "b21b6d7cc73d7b17dc16133f19ec2f7dd3a1a7122876e23eeb0b4945ac3a24d7"
    "nl"
  end
  language "pt-BR" do
    sha256 "ee726d682d6c226a636e81135be6cb3cf69091900b6b251af3d8e601584ab2c4"
    "pt-BR"
  end
  language "ru" do
    sha256 "76c5596c3f905565e2a7bfc7849bee98f131eb14104c10736e768a6efe70072a"
    "ru"
  end
  language "uk" do
    sha256 "c30e1d478ffc384ec3124f6e094ddb4d38603f54ad3a1eb546f993873c54065f"
    "uk"
  end
  language "zh-TW" do
    sha256 "cdd245b7902141162a499b8346674c44f0c644c4c26c946eb2acc9fd19bc64b8"
    "zh-TW"
  end
  language "zh" do
    sha256 "fbec460edd0671a2403dd3e649254a1828cea349d3a47f04caa8ece842c5535a"
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
  depends_on macos: ">= :catalina"

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
