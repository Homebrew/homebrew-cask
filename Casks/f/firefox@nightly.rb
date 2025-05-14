cask "firefox@nightly" do
  version "140.0a1,2025-05-13-21-47-36"

  language "ca" do
    sha256 "7fb7890ea351ff6964af7b557f3f13646524b1314addb53bbdba2532db8fb1c2"
    "ca"
  end
  language "cs" do
    sha256 "3b72e0651b69a5d525b71863b101fdc17201ca4e3b24048404de513641849e46"
    "cs"
  end
  language "de" do
    sha256 "14dec18500e65136fd88383fc6fe88c751362d13277abec58a2ed4f82410b908"
    "de"
  end
  language "en-CA" do
    sha256 "cc5afe2ba8e0877cd4d10572501f0082e8d87c517eb90d59583c3e1b58b5793d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9ab60af6f59fce91e87ac8ae854f19e32f47169800683b296edc16eed6be9ca0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1a0428bf54733334084116b0bc507e13cd1f5bad056ad6a7aa99eb8df8623ae8"
    "en-US"
  end
  language "es" do
    sha256 "87d9aed40fc8469a8422d5984c0fdd5551980128d398f004bfbf4e838f0974f4"
    "es-ES"
  end
  language "fr" do
    sha256 "2616e3eebf0d30ddf138b74d31e91ac1b83df2b64fe54eedc04c7bb1141c9dbc"
    "fr"
  end
  language "it" do
    sha256 "092c18186ff174b31f1f7dfaf608bffbc978801f13251cd96a73a48d796b5ff5"
    "it"
  end
  language "ja" do
    sha256 "b991eef21457f123c0b1f2a1f94a29b57e816ee787761b2decb488749e10a783"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2c6244f893414d73ab8bfc17af3bf718b11543ac42c06f4246a26a7ef664faad"
    "ko"
  end
  language "nl" do
    sha256 "8e1a8a899ccd83c3067ccea691f03aabc0565dce884e2ed4e917d3b44a13a4d3"
    "nl"
  end
  language "pt-BR" do
    sha256 "a7c0d859cb4dcf040b96e4158f777b35075112923fb12f999f4ff6daadc2088d"
    "pt-BR"
  end
  language "ru" do
    sha256 "3d6d6acb3bd68edf5b1121a5d8dba93874028ae61fa59797e9b9c432aa23d937"
    "ru"
  end
  language "uk" do
    sha256 "48a7f22549f298376208a5a0c09cf7d90923d6af661dc837bb955a72b7760d71"
    "uk"
  end
  language "zh-TW" do
    sha256 "af445702c90516f97c588cf2da10e15a47f81cd7eb02a7ccabccbaeef6954de0"
    "zh-TW"
  end
  language "zh" do
    sha256 "62e794cb2662b6b5e670d66ebf7f877bc1127d8814fea87b3734a7c8cbfc9309"
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
