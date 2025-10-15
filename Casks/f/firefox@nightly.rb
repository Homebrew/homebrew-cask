cask "firefox@nightly" do
  version "146.0a1,2025-10-15-09-50-22"

  language "ca" do
    sha256 "78e797e87280144b2139aa40e2669b93230d72aeb6d211552409812e71daacb8"
    "ca"
  end
  language "cs" do
    sha256 "31cfcd0b972c3fb74ca4f5122db18c7141dcbbd6d278831f1e25e64b14b1c387"
    "cs"
  end
  language "de" do
    sha256 "d8bdf7a5be33030a26db60e261b2ccb33d9d0b8a0984bc7041cc3babd079e607"
    "de"
  end
  language "en-CA" do
    sha256 "77b3b721e5c55e893a85e4e3e5644ec05307876ef746bab020db1a109b306715"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c3e4c7cb3577b7636425a2a4a0e4999ebb19b986a1f853e0998652cc68cbdc4c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cd48ee26f6be778bf83d992098966e703afe605362de9542e80c100ab4cd0210"
    "en-US"
  end
  language "es" do
    sha256 "bd5ef6fc57f56b72db8e1fd81eab7d8f08bcd2dc178c2378245100d5b805a115"
    "es-ES"
  end
  language "fr" do
    sha256 "74bcf80d2657d63ec8ec72a67b851ed831105ad6656dd6cd2264c285206bd948"
    "fr"
  end
  language "it" do
    sha256 "0ff5afab816fff69ca180480c1e1aae0136459bd3a573881f4524f17ad4c54cd"
    "it"
  end
  language "ja" do
    sha256 "b4fff0677c4a82f4dfef82934986b7e12737ffeda30a552eaa2bcf733ff22c88"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ef8492ce4a7ed300e39ec807800045dd859d20d7eeba386c0bdf34ccd75037dd"
    "ko"
  end
  language "nl" do
    sha256 "d05f22cc431e24d8f60983b5c11ddceaf9a8c5d1d95787f4ae0e25df4bc64977"
    "nl"
  end
  language "pt-BR" do
    sha256 "de40762c51815afec086cb470551c4906311f97d29badbc1067ac2119885a48b"
    "pt-BR"
  end
  language "ru" do
    sha256 "d5628b94830bd6bbff9a5267e14b382a554565791ce2b6201e7d1dc3ce211b91"
    "ru"
  end
  language "uk" do
    sha256 "19b41b9421d0d78f484691f12eb2e37bf7ec435bdce0edcf79312088ca540da0"
    "uk"
  end
  language "zh-TW" do
    sha256 "3cb2b8698fc2d2422559a9ec720835a4b294f07486a985dba63b6bec4db6d468"
    "zh-TW"
  end
  language "zh" do
    sha256 "04dedc1efa33d75adbb81521aa3ddba0d5e6754d6ab7a74f8b332e1e178a22e9"
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
