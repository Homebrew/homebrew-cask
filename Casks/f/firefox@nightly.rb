cask "firefox@nightly" do
  version "162.0a1,2026-11-12-09-52-10"

  language "ca" do
    sha256 "1dd83b642c198f673503fb9368662a30c09510b4ca2ac20f088012d588baed31"
    "ca"
  end
  language "cs" do
    sha256 "d11d6c09b8b1b0d2a53eb66696cf14788a404738fbd5faf690bc42758415196c"
    "cs"
  end
  language "de" do
    sha256 "c40f60a0c18d18717f68ef597e984a1942043823f32642eb7f9617cd340439be"
    "de"
  end
  language "en-CA" do
    sha256 "d1a2d6bb210637c2b32fdd0b6c7caff1f552603740df30ebffb0fc552ac85109"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a6bd5ac1b33d4d0a0ba78f224903cc3d720bc3fc45002608ce9617c5f4141890"
    "en-GB"
  end
  language "en", default: true do
    sha256 "30f1798db9b948abb0d4bf69b1fdb6a43af12f92569ab06c9ba6e5c7053a0226"
    "en-US"
  end
  language "es" do
    sha256 "6f8ef0806bb1d5003b78e4645bec4dee783cd8385b758cab8cc6b91e96142537"
    "es-ES"
  end
  language "fr" do
    sha256 "ddcaf898437cb1593ef6a22c896b2f9f6869710b0a295e525368a451e1d544db"
    "fr"
  end
  language "it" do
    sha256 "285fb0cc0869d7a4e64542f9d237e1dca32bdfe53d5b9ab58b33e7c90e278878"
    "it"
  end
  language "ja" do
    sha256 "b9471fb35d097d5540a4a238a1732150b4f4643dac4c59266653b7ad082e3a1b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4825264f1c8eaf81557f622f831ebee26fde56a4f0c55c9c8a8c3bb6e6c3b7db"
    "ko"
  end
  language "nl" do
    sha256 "05ecf4a83214549ef82fa65b8a6addef7a50fbabe281f713cfbaf8b4f0a30452"
    "nl"
  end
  language "pt-BR" do
    sha256 "ff6862502e24e23b481d5bd23ea4473b659225887a2e7286a98566709a31ca57"
    "pt-BR"
  end
  language "ru" do
    sha256 "a6008452c686942c9dc224bfc655045e757e7d4cd154047aef641fd9a58e0645"
    "ru"
  end
  language "uk" do
    sha256 "5b5d932ba9d5a7f7f5d7da074973ba8592045a0ce27f3d710e316c0c7c663ad1"
    "uk"
  end
  language "zh-TW" do
    sha256 "024297a87c79fd16d9df0981542592ad94c027f1cdec2c41df662cccba01e8af"
    "zh-TW"
  end
  language "zh" do
    sha256 "08903fe9f83c6f24e27a8d43a2e71eae3a466b8d4c882ab83f0bbf311f7a716e"
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
