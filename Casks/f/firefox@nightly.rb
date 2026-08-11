cask "firefox@nightly" do
  version "155.0a1,2026-08-10-20-20-13"

  language "ca" do
    sha256 "8473a591bf964b7956e89de1597c04624d24af305de3090468b5108718fd43bd"
    "ca"
  end
  language "cs" do
    sha256 "474d515ea3788da16712e8f7d1d0845cdfe995396b9747eee89b59e3f48fba15"
    "cs"
  end
  language "de" do
    sha256 "4007ebd121b5edaee7f3c4dd8d0ea608948c4eb67c97761e00b05f732423e499"
    "de"
  end
  language "en-CA" do
    sha256 "e61a9dffa2b3cc2984c26bddf94ca81eb22199ecf44c63bcec5b93e9de4a24d2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c79419d6c52ddf02dfd4f0df596e071e38d90406f57c4b0e5a74dad7e2f80378"
    "en-GB"
  end
  language "en", default: true do
    sha256 "94a8abe08b637982bcddb6efc8079a253e18c815cffc3aee5061ac9c92274896"
    "en-US"
  end
  language "es" do
    sha256 "bafb16789856c0395e9a8c798f87fd13076547e5d38bef28b4e94adcd856ea8f"
    "es-ES"
  end
  language "fr" do
    sha256 "0aa378c641ed319e0e220caae6ff1eca3eee0f3655b2823e0f10242cd1bc79db"
    "fr"
  end
  language "it" do
    sha256 "a9da3c7ff3179d4a819cc3782d1869db1c95dfbbf4f8a4432779e14202d0c6c0"
    "it"
  end
  language "ja" do
    sha256 "3b581d5845ab586dc85b076b894dec5184926be5a7897c2ab1adbe0697c6aff9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7ba929361ce072c58b3c029b1be36daeaad5dd0ca2d00c08703e24fe71d70000"
    "ko"
  end
  language "nl" do
    sha256 "0c75c54f24ab9b0eda06c04cb5850131cfc8bd88b69e3aaca91472aaf8ee7556"
    "nl"
  end
  language "pt-BR" do
    sha256 "122b02842fa344558119e805192d20517a12a6b0cc19cabca57e474c62086433"
    "pt-BR"
  end
  language "ru" do
    sha256 "b8035409d96fdd06370b2df0458a65ab47fa3f12005283a56c367f0776dd55ff"
    "ru"
  end
  language "uk" do
    sha256 "87b8ae7b7040b6d0f56b943806855467b04996da710c28dc771f95c2a3eff5ed"
    "uk"
  end
  language "zh-TW" do
    sha256 "f458cca9aa92953c9206859395c721548e41ff2ed4b4996d9638624e0273291c"
    "zh-TW"
  end
  language "zh" do
    sha256 "c73d91b608650a3fd53c10a1ce290863ef35126c79e64d8202b043791c25c193"
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
