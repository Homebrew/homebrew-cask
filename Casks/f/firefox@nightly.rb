cask "firefox@nightly" do
  version "149.0a1,2026-01-27-21-25-01"

  language "ca" do
    sha256 "18be4402ef53b018d38234ad66e25fff943dd5bde661e95b723f14ccf70dfd9a"
    "ca"
  end
  language "cs" do
    sha256 "2583cabdbf0155f5aeed20c8cfb944d02f7d8a8593917d28832c9647db2890eb"
    "cs"
  end
  language "de" do
    sha256 "106decaa887f7af7db84fe1b71d9f633a000c92b6b91b6fd74684d799d52301b"
    "de"
  end
  language "en-CA" do
    sha256 "6845489425d6a9fc7810e17fbfcc9b6355e4e7c9643f3ed5588177e7affae8d7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "733f91724e58f973769093c21d190cf6ba3f358e756398de9533a0a9ec3ba94e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "98ef333c578612b8391ad643c93c9c5bd994338d8137911d95c6313c2d0fa3b3"
    "en-US"
  end
  language "es" do
    sha256 "0cd97bacea621806813f6084153740c2e4b36b808fc99c68f6ab9faabf41652d"
    "es-ES"
  end
  language "fr" do
    sha256 "f27e330c1c90aff1af40e40b2c96516597c9617efca13474703aa6fa40109a08"
    "fr"
  end
  language "it" do
    sha256 "11acbcc5e3324f5114561489d36534b40fab3caabccec7d92e979aa47beb2cfd"
    "it"
  end
  language "ja" do
    sha256 "e286527cb2f1eb13b7cc4b3c71f808e016b7f0efa0af1d2d23783825da5e671e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8f9c52361d80ed9489cf6f2b5427397d86d639f2785ee6ca135f553b3af1862b"
    "ko"
  end
  language "nl" do
    sha256 "b7c2a37c43f467148a4fd73a30a4e5bce6751c95ddb8584245dd04c9a225ae46"
    "nl"
  end
  language "pt-BR" do
    sha256 "9659d3c5b95e7aa9cbb3137477c4933e16a4302ca1661b4b882c158b694ba20d"
    "pt-BR"
  end
  language "ru" do
    sha256 "8b1ae639239303958c2f737abab373636952f57aa98474a4c76453a80e4a23ce"
    "ru"
  end
  language "uk" do
    sha256 "d7486822dd1c21e2971ab450b7a6068eb839eb9ebdeeb4c77ecbb576ff9fb020"
    "uk"
  end
  language "zh-TW" do
    sha256 "080b74bd713e88b68b63656cbdbfa3c8a02b9f8624ce7eb89559061062770009"
    "zh-TW"
  end
  language "zh" do
    sha256 "b79a8e95bfc2e8e9a7b48b242f3a61d47fbaf2855b0b30707663b5ae067cb8d2"
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
