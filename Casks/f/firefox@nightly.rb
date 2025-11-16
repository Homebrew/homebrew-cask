cask "firefox@nightly" do
  version "147.0a1,2025-11-16-09-23-56"

  language "ca" do
    sha256 "7c9eea3733d58821ed284be478c903b5bdde39acb273b720c32d0f6eec0e48da"
    "ca"
  end
  language "cs" do
    sha256 "7a3120446de631881f51ea34829a535562d914867ad57d80aace8ccbeca67dc2"
    "cs"
  end
  language "de" do
    sha256 "fb313cc1d96ea245e2e7c07cbbab0255e1e93486007b94a560c17fd3939aa656"
    "de"
  end
  language "en-CA" do
    sha256 "8254c49e76699eb6aef303affcd30e7aa40a9caa1550e666791e2aae4a2b1923"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1f74a032839d4bcd64f55b483335725b4f969040675bf057d919b9e646ec4306"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0c0ae82b3c8b03b14d80a1e9f82b5fc2e05af4823b824a4019d77e3327ac31bb"
    "en-US"
  end
  language "es" do
    sha256 "0333dbabde746b8b28c07c14a7b8575f93164182299491bdd285522fa646a88c"
    "es-ES"
  end
  language "fr" do
    sha256 "0876c16792244390358c98d6565a78a426f82beb2642ed696f4a84047e73b4aa"
    "fr"
  end
  language "it" do
    sha256 "273db98001a166867602ac23100b760c79123cd95a5b45626cdc82aa0dcca626"
    "it"
  end
  language "ja" do
    sha256 "25ac1ceef3af20f68344a71124fc165f1fffc228ca71f45743abc3c19028035d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e394fd822279c1aad0864f1272dcf7c45a2ca6725202816c311e27f77f863ccf"
    "ko"
  end
  language "nl" do
    sha256 "a3d734000cc497114285300983f226fc08d14cb055ea3d7dafde0adffae2ba4d"
    "nl"
  end
  language "pt-BR" do
    sha256 "e7b155ffc6966acacb97e1a0a45f110f60e4f70e13a16396f4842698668e8340"
    "pt-BR"
  end
  language "ru" do
    sha256 "120791340198428d40584ef686d6e360791b17252d3b4477957401635b8f1c88"
    "ru"
  end
  language "uk" do
    sha256 "5e9ea0050d660cdb88f88a1463b35f9d15e8b11e17d7252f139c1be90c861b5a"
    "uk"
  end
  language "zh-TW" do
    sha256 "ea169642bda563b32bec2200d669270c198a3e7260130c39a39ed093d36ed860"
    "zh-TW"
  end
  language "zh" do
    sha256 "f99b29b1ff34f36371fe05b3c3c81c08777f3b262536c937f5c123d125d42967"
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
