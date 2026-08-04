cask "firefox@nightly" do
  version "155.0a1,2026-08-03-22-18-40"

  language "ca" do
    sha256 "79019c2981bb015e149ce0d10e3f782ce44f83b4c495f7e55eb351f797fc5901"
    "ca"
  end
  language "cs" do
    sha256 "22a636ba4e3b38b214dbcd08e504e771c52adda69691debbb9e0b82fa613ac00"
    "cs"
  end
  language "de" do
    sha256 "433063493aa93bd54957b2ff94a6a31469ddfc87a3ca7921e60b1e4240388bfc"
    "de"
  end
  language "en-CA" do
    sha256 "90820a9c47099c5ead4d6a9282c15a8b56a95c45a8aee532fd8ccabaf82aaa44"
    "en-CA"
  end
  language "en-GB" do
    sha256 "279e012879eecb644d485897df3cddab974497be41dc25aea9074b66397c2bff"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bc2dfe7539b5f58f1fc7333da60c364d0e56dd11d09bb51971506f8d9e394bea"
    "en-US"
  end
  language "es" do
    sha256 "382e7f63ee05ea28cbe58b046f28b90cfe483e08b7ac0b66c9deea7814e5776a"
    "es-ES"
  end
  language "fr" do
    sha256 "0fed83eb581d2103642293446cf68fa9316cb4b5b69d66ad65f62ef40e46e802"
    "fr"
  end
  language "it" do
    sha256 "34dc54045132dca003ecbbebe074010668600892c346ecef3486dc1ad99703c4"
    "it"
  end
  language "ja" do
    sha256 "87ebb88b3524179e44fcc117915db92fe2ceb7f4f605ee85c404aab8d8f9ea21"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6105b22384f6fa497c06fd001925506efb5949cb28fb4475f17beb8ab4443eee"
    "ko"
  end
  language "nl" do
    sha256 "bd3296d6656e33cfdcf03de622f125bc1c4a4d90060b27f9bd416ab953c275c1"
    "nl"
  end
  language "pt-BR" do
    sha256 "583be38c0921a24ffd7e6518f7626a25af806ceef45a4843f88b62309691f142"
    "pt-BR"
  end
  language "ru" do
    sha256 "5eaf0d6b8ed8115c9804490ca36a2aa3d2c6923e3120cb60b9805e7cf744ac53"
    "ru"
  end
  language "uk" do
    sha256 "3c100681832654f56fb008f02e7d562c1d9546b9f3831af8fb31b5d561d0c462"
    "uk"
  end
  language "zh-TW" do
    sha256 "db605e95e75f7a5c85d5e96fe3647056f9a8166837070655d345b31e96ad8a72"
    "zh-TW"
  end
  language "zh" do
    sha256 "f3e5f126d8054037abdab0365c29379b3cde3ae1d8d7157a926fbb518eb69eda"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
