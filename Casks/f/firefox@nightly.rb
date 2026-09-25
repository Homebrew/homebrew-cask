cask "firefox@nightly" do
  version "159.0a1,2026-09-24-16-43-00"

  language "ca" do
    sha256 "bc414b4899b452276c569135a8727d416c48449078926dd384583504a5ba0b07"
    "ca"
  end
  language "cs" do
    sha256 "4e2e679d17d8b3314814e4081ee013ee5e0849d2e08da196a2ec9e274f0dee41"
    "cs"
  end
  language "de" do
    sha256 "d34dbd177f38f5107a2c1188bef1456c5c93f9e83bf1792873981ae778618950"
    "de"
  end
  language "en-CA" do
    sha256 "493e83022f77766cf1842b3389f26553a2d5513a30059a7f2d0deb0eaf0aabff"
    "en-CA"
  end
  language "en-GB" do
    sha256 "faa1f523ebc34225cdeb86dcb079dac15f6f6e2b201360124869c524e9504c29"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0819c1f1463d2817c93f19ac3e520d575f2ee44866890e2f651cdade48854806"
    "en-US"
  end
  language "es" do
    sha256 "4f88227a7fd6e5eca97629c409fe9164abcc51f50b9ad5988c0b17205491d886"
    "es-ES"
  end
  language "fr" do
    sha256 "8d4d65d2760b06bc4c2241c9035fc205bfd3390835a7f9c38c941c5fdb01445d"
    "fr"
  end
  language "it" do
    sha256 "b8e9b117d774f60da5d3e09bd2b2badf66b67f304db928ff75200f9eddd5c847"
    "it"
  end
  language "ja" do
    sha256 "a1d1de05e67b121ab6ef5449ede8f7ed942c437bd31c41f67df6f544abb899f6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "83d16878afe181ff167abffa7447e9b91ac459c1ad91a0a895c6e9305b9a6364"
    "ko"
  end
  language "nl" do
    sha256 "451ffe62303c4a4e12edcdf40d12e395788e10f3ec9a0f2c99b068738feea70b"
    "nl"
  end
  language "pt-BR" do
    sha256 "6bbfcc71f2cd835511bb9bbdfacbb419f57490f5a634fa45cf84a10fdd367e32"
    "pt-BR"
  end
  language "ru" do
    sha256 "742d9309d76f083c6eb0afa21b54ac9db402d727511d5a5f59173311ab3efc4f"
    "ru"
  end
  language "uk" do
    sha256 "341994fcb504b739b379bdc339ae17d5321fdce051eba05c4299ef0c0e441809"
    "uk"
  end
  language "zh-TW" do
    sha256 "b1e63aa1b0ef36b44d6256cfdd0bba7a454fa03c3826dd8bc8ed9b8d952100c4"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f3e9673ab48a05339d79149a04204ded0d4ac6def75c081b686f10d8953878f"
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
