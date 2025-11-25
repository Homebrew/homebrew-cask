cask "firefox@nightly" do
  version "147.0a1,2025-11-25-09-53-27"

  language "ca" do
    sha256 "a4031b563bd97c0f788636fac9babfdd945109b84a74eb1a4a3f3a87b4505420"
    "ca"
  end
  language "cs" do
    sha256 "86117d1a0046d37b4db93f7812c8f89e0dc2715de4a72011aee28d8a57cc5da4"
    "cs"
  end
  language "de" do
    sha256 "dea2d9ec36bc4b359686c14281cf23f75d77cd6c1e39bcd5982335911bf502a8"
    "de"
  end
  language "en-CA" do
    sha256 "48732aaf8926d35e27806b5d832c3cf14d9b082b55c5ee26b8facdbdb372168b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a93a351b3a4109d40fe86a4dbd7a16e56d1b2ef7d8cb3575d91d2c6d37bdf14b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c029127bf0fcdc20101b11ab4eb3967f1460f3ca4634ed7952af3e4bad9bb92a"
    "en-US"
  end
  language "es" do
    sha256 "c28164accb60af5383ac51213fc190b903028e9b54cfc70ba803c83cfbd82a02"
    "es-ES"
  end
  language "fr" do
    sha256 "74726e2efcca916cee81568c19532970e5c74deb7cd73b97acb9636ad2c429d5"
    "fr"
  end
  language "it" do
    sha256 "d264e1d89911c6bc0b2f5b4d4ccb6be3e0fc7ba1d2cba4c276f1064d08c90ce5"
    "it"
  end
  language "ja" do
    sha256 "a78fd493efcc26df9b589d7e5ecfcf2e415635f1e773e7c9abceaeadcadd5dce"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f67a843596598d82320736f0b176a77d5f5ef94788e26744dfb8269ba3d48b96"
    "ko"
  end
  language "nl" do
    sha256 "f4b051b2f83b072497254640aed952fc5148cdc4e53167980ccc10b972aa8523"
    "nl"
  end
  language "pt-BR" do
    sha256 "316db45ecb175cba9e85436235c928bcc2e64924349dee07f23e4623138af175"
    "pt-BR"
  end
  language "ru" do
    sha256 "9ac55986f4032a1950a9a644752271a677241e2dfabdbc263ffbb0d89d3d0aa3"
    "ru"
  end
  language "uk" do
    sha256 "9d6ee6b43b3f21ac94ca7af4f68277926382ad946406ddf3d099db59b28df4ce"
    "uk"
  end
  language "zh-TW" do
    sha256 "76d707e5d095d47fc84211eb6a8416d8e04794ce335dd8f6f672b564273d2ec6"
    "zh-TW"
  end
  language "zh" do
    sha256 "12751dec4336abf54bad0af65fd8beaae663eefbcc8b53561c32a123ac273a28"
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
