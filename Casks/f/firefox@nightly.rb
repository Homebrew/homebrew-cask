cask "firefox@nightly" do
  version "150.0a1,2026-03-13-09-43-29"

  language "ca" do
    sha256 "58212dc26cf11f78d7938f911a55385c13101079806a043a6cb35ecea885ef9b"
    "ca"
  end
  language "cs" do
    sha256 "7d1a91d6dbd674faa72dd6a1ecd3db8b451a620d99df22cab25d2c223e5aa06f"
    "cs"
  end
  language "de" do
    sha256 "ef0f3c35420b68f4b94512adcc6a8214906407d2543ff0b06055cd566b4223a9"
    "de"
  end
  language "en-CA" do
    sha256 "0826acddffb5ad8a37250e25c6ae4a1827d5efeaf348a13a1c151bbcddd34769"
    "en-CA"
  end
  language "en-GB" do
    sha256 "76b4ea132653d85265e18995bf51a6e439208482f0bf0f0ba94d7c1f225feb5e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "861908dac9269f4c8b1311282a9df9c5f3c8eb10cbf29112c1e8c87d9258797f"
    "en-US"
  end
  language "es" do
    sha256 "83e2f2a82b09eb177acca1c8ba367721fbda4d669015c142bd398de4fd469b3c"
    "es-ES"
  end
  language "fr" do
    sha256 "275912c11b9e3edee5621431a721f511663babce93c9f8c253963e310a6e510f"
    "fr"
  end
  language "it" do
    sha256 "aa2bee78abc83d4aa91c739f90996e44460f77ecb9fa9f5a9ca150450ec4efa5"
    "it"
  end
  language "ja" do
    sha256 "a5a3c68f64c39efbcc767f5581aa89f2b89eada64b00cbd04f64c78d9943b0a7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "32f1b9f309860d024e4b6b0490c24b88049613fdf348df83d0270a348065d72c"
    "ko"
  end
  language "nl" do
    sha256 "f3b66a5ae58dd76af9a534c17b1d824184591c2687518759bf5bc2f200fbf69f"
    "nl"
  end
  language "pt-BR" do
    sha256 "df140d72b9676f2e2974bcd031155e0c72804473cbacc910278e0786b85eecf1"
    "pt-BR"
  end
  language "ru" do
    sha256 "77cb6d7f284a237011ec00d4c182f4399c7d29a8b3dc210bb44c0ace157976e8"
    "ru"
  end
  language "uk" do
    sha256 "da197758692f68bef85b4d61aa79659499ea1e618e63e5a441ed3313724bf9cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "92088bc38d08026e3f900f16695611888644151ff390926662982f8a2235601e"
    "zh-TW"
  end
  language "zh" do
    sha256 "a7acb2dfbb5bd93d53ebce7e49eea8905937696496fac51b1ec2c84dbf94fb18"
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
