cask "firefox@nightly" do
  version "160.0a1,2026-10-21-20-53-24"

  language "ca" do
    sha256 "54a7b4f4bb174490076ce0c7fea60d552015c5c6027abe8e97278a98f80af83e"
    "ca"
  end
  language "cs" do
    sha256 "d528646c4f9bc2d269459b1b9a8c79df1e2825254fe6a3c34aaa0cb75967dbf2"
    "cs"
  end
  language "de" do
    sha256 "b423c8f071bb8fbf19673b78d769b85a1a8499bd6f9c7222d527d6ca5288c801"
    "de"
  end
  language "en-CA" do
    sha256 "8dc44f2b160a15d1d21c07eac7eb45b44a30736e47a15dd56e5203021034a6fd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "88d245164c26ea1dbecc403ad8ee5d7a1c9e77408558ae3fd2fed5a6e6b424f0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d91330aa49a3effb22a130980bee56ecbc68d720943e389f2433e09462a8e11"
    "en-US"
  end
  language "es" do
    sha256 "9efacef20bd030309079ce39dc766b5b5abc5170d2273c03e67bef09d52cf262"
    "es-ES"
  end
  language "fr" do
    sha256 "6c191e0c0eef5c26870739bbe2ed4b8107a362a54b8918c3bd5cc6c78fb852d0"
    "fr"
  end
  language "it" do
    sha256 "74c4c1f390dce11ea2c2494e276349415b566b1765dcbe3d0d96396932f3783a"
    "it"
  end
  language "ja" do
    sha256 "6efca958960e95c663398686f94deb5a70586792a5f7127afdb05ac38a4b5591"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "519fe0fa1abaa4d749d8491f21563a1e8b8b61b09d8caeaca80211ecd7e2a9b5"
    "ko"
  end
  language "nl" do
    sha256 "197d35b2d921dbe4a5028625fd055571175a4ff640624feb9fbe0829bfd9b8c3"
    "nl"
  end
  language "pt-BR" do
    sha256 "fa4b4c5218cbe48f6443acd81e4c72354d5fca52b4f271203d6bf996a83cc1fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "a7315ff83ccee7d6847dc5852211bde72a88f57e968ee6056a8a9d4fb29c6c3a"
    "ru"
  end
  language "uk" do
    sha256 "d65af0e5ea8a1b01284b42722896d38d95660db61e239327b3f551f6f8d37525"
    "uk"
  end
  language "zh-TW" do
    sha256 "1f0d53988f0e2679db13fb4869f9fde95b4b427a9e5956ca57e8fd8237f7a269"
    "zh-TW"
  end
  language "zh" do
    sha256 "4ac4ddb0b56e616f83b866b715649e797935fa12b82620f46bfd3f867f3953c4"
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
