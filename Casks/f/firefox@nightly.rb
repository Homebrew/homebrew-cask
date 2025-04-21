cask "firefox@nightly" do
  version "139.0a1,2025-04-21-09-04-05"

  language "ca" do
    sha256 "df37b02349b81876076430362005e904ac4ae485e351632340aad2bfb5caa8f2"
    "ca"
  end
  language "cs" do
    sha256 "70aec0a97eaf15bafe2ed6970c46fdde35f261b2bb0ffeaf977f9382951a0dd1"
    "cs"
  end
  language "de" do
    sha256 "536dcfc19ef90c4425c45b7c6d87080d3b89de6350250442db8a38c956bef643"
    "de"
  end
  language "en-CA" do
    sha256 "5d02c08ca41ecb4c63c3e5c9d957cdf0b0b9e3fb46e8f2d8ce801e86b0d0bc8c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "46212925e7a065fd2d232d1d99197784d954546a8d9bf7980059e20ad97cf64e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da207ba88163b2fc6f8c3c012c1f5ce1c8d66015e0c142655f01cf2219561f1c"
    "en-US"
  end
  language "es" do
    sha256 "b7d45e0a26ab8409b36b707a9139889a6a2d87a05d198e76a8bfb483d0c94853"
    "es-ES"
  end
  language "fr" do
    sha256 "6ab83f65ac86e8d0142ab50df54c3ed5322de1afeb37982ae6c941e9e154f0b7"
    "fr"
  end
  language "it" do
    sha256 "2e36f7c45e8c71511318496b311e1371e6f8afa9179a70939763a5cabccebad1"
    "it"
  end
  language "ja" do
    sha256 "465c6e8bc77b0bdb096e26885e10d926f92d8cf2861306efb5280a071af0b81d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "181b79b29bdd1d53bb7bd6e9675507842c6318f3e1629a22e0ec480d38049b67"
    "ko"
  end
  language "nl" do
    sha256 "06f8af31fd775c5c59448be550eb8bd5415b5d72aa54c563f6511aa2e99648dd"
    "nl"
  end
  language "pt-BR" do
    sha256 "4eeda9220f061e5f60e329c47e6352e5778ee6faeb9269d8a34897fc86aadc34"
    "pt-BR"
  end
  language "ru" do
    sha256 "6efec3324429086499ca28b8158f39a5068948f571944cddb4556de9c4bb7a43"
    "ru"
  end
  language "uk" do
    sha256 "0cf32488769f8c8d77e6f27285c4c7c970ec09adca50540213d3f1aff3cbb662"
    "uk"
  end
  language "zh-TW" do
    sha256 "0dcefebc3e5152128bdabcfcf4b917283f7aa2af84239cf6d96c11ae682281f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "4f129f1552171a3d9e1d162c52db50ec2882dafe20afbdf1f8c00ab3aaac4706"
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
  depends_on macos: ">= :catalina"

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
