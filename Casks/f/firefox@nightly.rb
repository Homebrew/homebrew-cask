cask "firefox@nightly" do
  version "151.0a1,2026-03-27-21-42-19"

  language "ca" do
    sha256 "eab933c505d155ca8ec98a571b97d4f63a8d4286909f6a4950fdf600b7f250f6"
    "ca"
  end
  language "cs" do
    sha256 "7f2db3fecf4d8d7686ab128cbcd0a38cbc5d613a69c7e9e3baed7c6e6298e26d"
    "cs"
  end
  language "de" do
    sha256 "de2c321b63e3c7c8ac2c0b94764222b5a9259e1c9d3aa78be7851bb4c6caffd4"
    "de"
  end
  language "en-CA" do
    sha256 "2fdf1f274cfa4b8e3d461682f6fb3140952253a91c2822eb89090a862d6557f6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7e4936630a342d8a3a4959693d34efa8f2ee15f9a8c379ea72562b46dea7486d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "987dd7c3ebb9a82aa090b2bfff4cae574bad8a788684c3c79cdd12143974932f"
    "en-US"
  end
  language "es" do
    sha256 "a6503e545ef4b04dfaed25e7fdc174d0037b6a8b08d9ac965cdf5dd12ca87e53"
    "es-ES"
  end
  language "fr" do
    sha256 "f32380e6549f8fcc022a7167d165520eddfd8f4f0ef29719ae7d5842ddf4751e"
    "fr"
  end
  language "it" do
    sha256 "5f23ee28b2630df86162c0c40db011125197b1645ffefb43f3aec521d3851d27"
    "it"
  end
  language "ja" do
    sha256 "cc687c3dc4a45eb18b06ce01a5f471c8a12437055cffa874b4b7cb2cd0d54e90"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8ae1b95921fe94d1afc362888fd8d336ddd8460c4781ea12078152067101b22b"
    "ko"
  end
  language "nl" do
    sha256 "9e5b9b06d79ddf0f3af1e71e3708092a03ffe30dcbbc1a22713ab549dc0f3a00"
    "nl"
  end
  language "pt-BR" do
    sha256 "7e99ef8d0cd8d47dc0be90cb73b34fe9c7979f5624d8a64b6e5a11e1656f7792"
    "pt-BR"
  end
  language "ru" do
    sha256 "59b9af2e0be547ed28b46dd26909ddaee90b44d25593ac975efef7a73ca0676e"
    "ru"
  end
  language "uk" do
    sha256 "59934954a4b2e7a94f6cc487b57a23781ea99e838c3b70cbad0ef9740a00b881"
    "uk"
  end
  language "zh-TW" do
    sha256 "e3df93189ff71432635b11f1fe2ae5c58643df5bb55a3de6389e06d21bca0b62"
    "zh-TW"
  end
  language "zh" do
    sha256 "4cf4365f96bb587348d2909e0e1f16ce81467b2df4ff6c5f5e9dfa654dafaa51"
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
