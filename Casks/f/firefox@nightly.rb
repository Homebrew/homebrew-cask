cask "firefox@nightly" do
  version "154.0a1,2026-07-13-09-33-15"

  language "ca" do
    sha256 "75f97509b2b0cc75b68bad5ea9d4d6db73a1c9028e5f7d3e6e11505aed1d5739"
    "ca"
  end
  language "cs" do
    sha256 "dcb81adb5eb3a9b878767289741947d8e7dc3fb3fb3ee7d7f01dc6dd151a6d2d"
    "cs"
  end
  language "de" do
    sha256 "975ecd4b76fc890863400268958c6e44fae4611058124db28c2e7f3652a8e33f"
    "de"
  end
  language "en-CA" do
    sha256 "7e3f3c57d5e6723e9eefb9e65761f32fbaeb64480f7d9bd3f503d52382bc73cb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "675e754e6661e8f3f523e1df2ff158138e7d3785ede395eb0d3092384fcd9814"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c208dedd01b1f54800fe822e39d2f15ab42f52cf9dc4c0864ce79c6bffeb26b1"
    "en-US"
  end
  language "es" do
    sha256 "72c5b8e9442522a6d7cb6c6634827b720964b2c3202facfbb29e8e5bf15b33ef"
    "es-ES"
  end
  language "fr" do
    sha256 "7af041302d3b6e773145a896c200b69e05fe1922b3aa8679d2ddeef686ec83fd"
    "fr"
  end
  language "it" do
    sha256 "25f518ffcafb6d61003b660bc01be42a41902ccce4e6cd235b7f7ce546d6f779"
    "it"
  end
  language "ja" do
    sha256 "08391d21b2480fd7b29daa860d1d96e8bc4d1f4190748349764781c6783e440d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "794bf95e2865a61b7682f7894124627df43d08abb5ffc0dfbd501da792b645d1"
    "ko"
  end
  language "nl" do
    sha256 "738ddc9504864a9665e3bc600bc5bc94921c00ecd3365cbf869713fc7f56349e"
    "nl"
  end
  language "pt-BR" do
    sha256 "749c297d8b3b3d87462d2ef8818a34e696cc8bfba04c33a23b7fe07b8029692c"
    "pt-BR"
  end
  language "ru" do
    sha256 "ba6d85771013f3303c4afc0ba70c66fcfa69304308d0fe1a22fd85f14b38f040"
    "ru"
  end
  language "uk" do
    sha256 "7605d85fa7d73bc792ea307e6ae4ba6014e09c5e00cf809854ddd29fcca36805"
    "uk"
  end
  language "zh-TW" do
    sha256 "673d73c085dd10bc39a4f37bfdee6067e4894ebd164d8a25313612d6ed388a69"
    "zh-TW"
  end
  language "zh" do
    sha256 "c793035806d1cee34662ee38ac5a9f8232f42915c5e162b88bcdfc4932b4cb95"
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
