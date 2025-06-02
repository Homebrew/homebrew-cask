cask "firefox@nightly" do
  version "141.0a1,2025-06-01-21-13-57"

  language "ca" do
    sha256 "2eb26e9bc021b22f5237948b8ba00c3145ab39e4a7da1ee359b8683d09b7e4c5"
    "ca"
  end
  language "cs" do
    sha256 "36531b2a1a042ccc5107e18bfcb996e77d86c81f00425782164b8c85480cd2f6"
    "cs"
  end
  language "de" do
    sha256 "9c05e85a1441c59fe837cde50c17ce11a77de2a1fcf4f61f986ec1e19b099c36"
    "de"
  end
  language "en-CA" do
    sha256 "fb7ffb7f5b67988399a90129314cf29706597d635944e4bfa336acdfe94bf006"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6fcb73bba2698b5110f4c324cdc3a49f11d6f8c02eb97978289e18d7ab294849"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4c6493a27d70cb544a8f39a5b181ceafc42ff7b548ca04ed978a959e50d00732"
    "en-US"
  end
  language "es" do
    sha256 "c3296d8680e6b20165a652c47be08fc68542f6278f3d47558814a6a4ce48e5a4"
    "es-ES"
  end
  language "fr" do
    sha256 "ed5658d6517f5608f5f4e2c531e653706c1537d038a437772373316b8ddc4be6"
    "fr"
  end
  language "it" do
    sha256 "b0c4a2f7547fad08b8f9bf6214b0f4e5c9f4609df42ced19b320cb0aa67f1a44"
    "it"
  end
  language "ja" do
    sha256 "52022d53db07d479d10dcdd3fd894cf41d3b029df5a21a8251938d950e2539e4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4b5290cb122dae7fcacefb8c0f5c7fb46aa553a0f19210d51a81434bdf20f2a6"
    "ko"
  end
  language "nl" do
    sha256 "5be698a0139e96d36f0d4540138e07816ef28e923103a0142835eaf2bf9324ff"
    "nl"
  end
  language "pt-BR" do
    sha256 "c55fa85663d34e7475e88eecfe00eb35f04c8fd519953ebfacb215308437b22d"
    "pt-BR"
  end
  language "ru" do
    sha256 "972bdaa8786720ae209421628c320ab13d3f9b7dd56510997fad4fc156ec9b1b"
    "ru"
  end
  language "uk" do
    sha256 "6610d450428db3161cb9aeb2e3dced50ad3482c992204904bc1f48a18c2799b3"
    "uk"
  end
  language "zh-TW" do
    sha256 "627ded9c8eb6e73e70e22c7d7acca21bc60169e13ff0fa556ec73b646708991c"
    "zh-TW"
  end
  language "zh" do
    sha256 "79e2a8fe5d5b22923fcde123c89a9343a164785b3b1b42380dea225ee73f56d1"
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
