cask "firefox@nightly" do
  version "150.0a1,2026-03-07-09-52-00"

  language "ca" do
    sha256 "cb24e0196cd05b119b13f6f751884756f69477ea9a3e8dc09fc0d61df5c1ed86"
    "ca"
  end
  language "cs" do
    sha256 "44d28ee06a5665ffae4089765bc038f5d463018fa810a74ec64173e1eb44fe7d"
    "cs"
  end
  language "de" do
    sha256 "90960cd862ef96f1afd9b885eebae1a4b20b9b8d6d9ebfd50f70e3d8759d3e20"
    "de"
  end
  language "en-CA" do
    sha256 "d0a05b4683e4f2c4ac37964ef12af3479706708ca0a094d9540e2b49a0f3259a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3815d0f017435b8a1ebaed2dce320502d9f38924d3a89128f7ae984e44ee21c4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e5e73e3feed44698df3020f070ac0622cf9e9768e8fd17aa8e04c84793359f6"
    "en-US"
  end
  language "es" do
    sha256 "5b997ab3ab9fb42b91f5bca4ad1d8c1abfb4c5e094f9e0d13035ff16e07d40b5"
    "es-ES"
  end
  language "fr" do
    sha256 "87c0be389d28c492a9a813ec4b1a08f2b062e259ace33d37f5df6b30671c593b"
    "fr"
  end
  language "it" do
    sha256 "5f940c7095c3cf523ff8d43e2d89cdd550d62b7768f674faf3237401bad039c6"
    "it"
  end
  language "ja" do
    sha256 "5ffa09e9412f019b445c66c7abd6150a0d75bc8c0618ab7445e2440ded543005"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2daf3503bfcf72b899511c55734b497870aaf656908c864057865402106a6814"
    "ko"
  end
  language "nl" do
    sha256 "84430e1bb86aae2d1377c83d447c7fa196c3106390dbe0c2099ff9330d4d27c6"
    "nl"
  end
  language "pt-BR" do
    sha256 "123511b49c8a081ad9df92bef6d25de09ba23476330ea09f6b53cbc500f97caf"
    "pt-BR"
  end
  language "ru" do
    sha256 "917cc096ba766478e5f1c394e3af23a84d469b419008b2f653ce340ac092a50c"
    "ru"
  end
  language "uk" do
    sha256 "405e08eac2eb2537cb7af4b61418f9df0a64d955fd6f174b5d7a7b526d5e6c0f"
    "uk"
  end
  language "zh-TW" do
    sha256 "7c81fbdf2f22e8c0b7b5ea8d513040f3d85181bb676521988009e9ab03442857"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d29eb567872e846d08bf56a5ac060fda8d123a0c75d21c41f16d9a43a4b76dc"
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
