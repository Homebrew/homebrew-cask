cask "firefox@nightly" do
  version "149.0a1,2026-02-13-15-37-59"

  language "ca" do
    sha256 "a35e6e1f34b36eb33d20da51f1c92cf776ff968a0545f85ea47b87ef91dfe894"
    "ca"
  end
  language "cs" do
    sha256 "14fbf16c986e87a23a6f3b78ac96adbe5e6788d82f128ea8b23186a19d7279b4"
    "cs"
  end
  language "de" do
    sha256 "ef4662bea9827e283d134c8621abe4eba8d410a3f071921e0e278226d6e4c040"
    "de"
  end
  language "en-CA" do
    sha256 "4e9d3c49df97ed3d32b53f8892a07e7994513cc55792bfd3e93b94cf773808e7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cf36a89a0f9c05996af32f5a142cebb14d21a584d6461de92a380ab9a3f09207"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6f21f9dd30886edfe859c4fda970c68e29849922764873e9d1c92758ce293b23"
    "en-US"
  end
  language "es" do
    sha256 "18762dd8cbfb590877486df1efd3f6276e2ffbef8d301dc303d6bdb71836054c"
    "es-ES"
  end
  language "fr" do
    sha256 "39b2dd2036814302eb35fd7be7ebc12c8454336ee70b07c71439d1ce503bc871"
    "fr"
  end
  language "it" do
    sha256 "d47427c218661c43513f593da98ad7e6fb5989f3a497565bad514fd829b575ba"
    "it"
  end
  language "ja" do
    sha256 "d92e67de64aa41739bf9f7fc53623c011b7225b532ab138d29493502406c49e2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "516bbd4b03ba286e96e4fc78f37619dfe5a2a80e118609ae867b811bac4d42b8"
    "ko"
  end
  language "nl" do
    sha256 "5f90e3d926ede68a0a7360236db438f16ac486138673c4774a0f5169fb1d9683"
    "nl"
  end
  language "pt-BR" do
    sha256 "286ca784161b38466d732b62d37e4be766aa4cc9b826494fe0d8e5129b833007"
    "pt-BR"
  end
  language "ru" do
    sha256 "c7b44010889b8cf0d9cbc62e02336cb1c9bfe019dc2e531f49d680c141e52390"
    "ru"
  end
  language "uk" do
    sha256 "2c7b54b49cf63d118ba34a82d2cca0344214290db1c502401ad8f7682114cf49"
    "uk"
  end
  language "zh-TW" do
    sha256 "2828c2f4b5b795ab67950dbf3d2e201052c11da0d911ba31d5af3d49a9bbb606"
    "zh-TW"
  end
  language "zh" do
    sha256 "1be4df489463abcde4f046cc10818c73a1f3f6f533731d6c90e8856c9c1b231b"
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
