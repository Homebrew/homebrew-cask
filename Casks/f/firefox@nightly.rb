cask "firefox@nightly" do
  version "148.0a1,2025-12-22-21-13-14"

  language "ca" do
    sha256 "67ec2693d76bc4d1cf5961db2933eba2e3d75c135e72144241f13f6c54ea8ecf"
    "ca"
  end
  language "cs" do
    sha256 "3b40b6b4c13cf8efdd16f69ea29460338ab6d9006cc6c57e1dc63be9f92f3ced"
    "cs"
  end
  language "de" do
    sha256 "2d2ac860084b65c13bae543999b12137d648f4d8f102462a0249bb8da7365b0e"
    "de"
  end
  language "en-CA" do
    sha256 "3d1f4e1b57febd51eef144eecd31600160ef8177eae9e188f675c9c0da0e835d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "623de0fdd34a5d6be2545b7c85769e82fa075225a17d82df8a44e85311c8602e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "de04803908c5813ce30774b31fc9d8f38aedd0a447b4ca24b8a97456f883bcbe"
    "en-US"
  end
  language "es" do
    sha256 "cb79087dddd1d564f7e04e0c1e833f7e3434343876de25bb94373fd504ebf690"
    "es-ES"
  end
  language "fr" do
    sha256 "cfffb6ff4d29264d21c1ac923672b132ad210d94b303573f6fe1369b0eed1f25"
    "fr"
  end
  language "it" do
    sha256 "ccdd3db7f40ea40c8a1be0a8dcaf7699af6ab25b45daf266d30c0ccac607c677"
    "it"
  end
  language "ja" do
    sha256 "8072bfb1ecc301e488870e4eb6f2add03aa576022b4ec74964fed45304db6b22"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2b3e9730f7745ea2b645ee7e2d19dab1de4b82b235faa5e5c1d623e10e32f1fb"
    "ko"
  end
  language "nl" do
    sha256 "97653171d7ef02c0ba52d576cc9e51a110e52947613cb29cbd644db65f1d9f5c"
    "nl"
  end
  language "pt-BR" do
    sha256 "57d79ed08359cfd841a3cf2eeac0b465c3741e2f9ad63ed86ba67a1052d4a3b5"
    "pt-BR"
  end
  language "ru" do
    sha256 "af0eaf9839844e753178ad46fb00906e8101d9a313c7b8fa58e76914ca6811a6"
    "ru"
  end
  language "uk" do
    sha256 "92d4cc053c9be5ff56f2d3399b8e4e833d68650319a3edddcb4706ea7342cacb"
    "uk"
  end
  language "zh-TW" do
    sha256 "aec989c1d7e189e7b8872431c62a160dad56bf01b6186095fbbb3148b3a579eb"
    "zh-TW"
  end
  language "zh" do
    sha256 "fdf7d34a43177a0490926589db6080c2f3b77c528bafa0e01d76d095a503ce3a"
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
