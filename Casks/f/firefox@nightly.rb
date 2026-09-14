cask "firefox@nightly" do
  version "158.0a1,2026-09-12-09-34-09"

  language "ca" do
    sha256 "b1749b8a128ca8c1d381cecf271f36b0d1778ee046c1ed1d41a3022b37809d0c"
    "ca"
  end
  language "cs" do
    sha256 "f8c2ab79ebc92455ab3fe1b09aaa9746aba0dc3c887e7188af809294caf9585a"
    "cs"
  end
  language "de" do
    sha256 "6482eb676dc636b45fcd5f75b9b3bcfe09a723fddd751cfed511940c844f2c28"
    "de"
  end
  language "en-CA" do
    sha256 "15ed1bcec166c4e1d3fc105102e5c98576e9539b9755e5a6f6395b232bd5e7d3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5fd16952958d7a6daf161e9f11eb9f218a41a0abde5ea3f772cb3c9d1485dcd5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b8b893ab5f4b090aea8d84dc05a87c01c05a6b311cd460b4aac1ba7630dfe4dd"
    "en-US"
  end
  language "es" do
    sha256 "d4a7b5ae711c40333d7090a5def31d67b462e230af5971e82929673429842f99"
    "es-ES"
  end
  language "fr" do
    sha256 "ed18ab59f2978c4165dd1b69d862bd9500bd1b50c0fc2197692c26e8beccc832"
    "fr"
  end
  language "it" do
    sha256 "107b8acff6cefb373b8c8ec2716c04cc0a83ba5ac674229186f7bc2e2302a8d6"
    "it"
  end
  language "ja" do
    sha256 "84b5720bc7975e87bccd43a7efa02579949d540c506a7d758a9eb5ad40731242"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a3f61cbe8ed0b0bbda893e215de8af011c52f111e90ef3ba27d12373fca819bc"
    "ko"
  end
  language "nl" do
    sha256 "9a59c391f21d497e04c8d256b9a9d2e7716a2c00e51ffba37a611608222b9fc3"
    "nl"
  end
  language "pt-BR" do
    sha256 "bec9db502bec3ce340e2f4d08ce5541f9b29903e848c422ba94928f5ba7ae563"
    "pt-BR"
  end
  language "ru" do
    sha256 "52b2cddf7317ac96cb73e3afe0e92412534b7150db8258a18e246ef552f4647b"
    "ru"
  end
  language "uk" do
    sha256 "71f1b7a537341cddd4807a36dc9473b2952089a6f29fe75eb49d1b55808d47be"
    "uk"
  end
  language "zh-TW" do
    sha256 "e36fccf605ffa5309871f88e37d2f1590840308ef436b5636fd780f67fd0de9c"
    "zh-TW"
  end
  language "zh" do
    sha256 "35b8230c856b3feaad3a987d8e416a8e8bfeeddc5e9ea2831f900bbe5c8e8f9c"
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
