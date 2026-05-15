cask "firefox@nightly" do
  version "152.0a1,2026-05-15-09-42-09"

  language "ca" do
    sha256 "9d8ea64147c280e79a2ad4d87c12c2ab25d2ddb052053e8b2f396cba53ddedbd"
    "ca"
  end
  language "cs" do
    sha256 "0b9c711223c9f5a29916c268d43704840fc8d705d8943bbcc7c3defb32d433df"
    "cs"
  end
  language "de" do
    sha256 "0d5ebb98065f2d2521a39070bd66700f93dffb37a8b3ea4a4ce9f77196204d3f"
    "de"
  end
  language "en-CA" do
    sha256 "c3e060b088841158482a405592ab4ea6bc52aacb503636a190a899485a956ca3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "515884beb75287d2d63cab92d2cb8c9119edfeeee9d3ffc1d5edde1b2316e3dc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f717bb2c515d043721f479d2dd543f0f3d71843a2fdbb032c394f74cb13cdce8"
    "en-US"
  end
  language "es" do
    sha256 "68b0067f7cf37c10e03b28cc0ed1ee74502f7c00ab5c4f6f83f11e5192034646"
    "es-ES"
  end
  language "fr" do
    sha256 "09a2021c84bac4491a900168bb9aadf18872c4532f0b26594e195e51d04f9648"
    "fr"
  end
  language "it" do
    sha256 "2348467062c9e57d1ce0388abc59b12dcaca858ae79efe9e77a61669e82dee10"
    "it"
  end
  language "ja" do
    sha256 "44d2ba54da25f5b793e296401a70ac3dafeb45ba63b6a1cd9b3826de5e011859"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9c6e0161a86f4a985a729ab590cab08f65c1eed3a4712392f12f153de8a6a731"
    "ko"
  end
  language "nl" do
    sha256 "bbde1a201842e35ba332713770ec35497a5861860eae3ff5a24e6ae09761c903"
    "nl"
  end
  language "pt-BR" do
    sha256 "cd761c3cbecf9fbdf73bce614538145fc5aa7b7bfbd6af8129cd6b305c6d2ab3"
    "pt-BR"
  end
  language "ru" do
    sha256 "581589d522a2d25af364951865ae81a059df1cb317eb015c3c1e5b0c1555b1ac"
    "ru"
  end
  language "uk" do
    sha256 "636fdc4ba571da559d802f9a981c7edf9a1063cf93956030d840bacf646506dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "75ba6e749389154e189946f9404834b5c99021dd2af5c56f2095918a4577aede"
    "zh-TW"
  end
  language "zh" do
    sha256 "cbacbf03bf6afa4a8716788ced79491558d82148326ea661be1dae25335736b3"
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
