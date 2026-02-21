cask "firefox@nightly" do
  version "149.0a1,2026-02-20-16-27-39"

  language "ca" do
    sha256 "b76b52c7dd7a9bd579b2e96db04affebed7ceabccdbd6a507405742cbdab519b"
    "ca"
  end
  language "cs" do
    sha256 "8d7332083760ed7cd5d9f4b3fb2731817ae719f0bc10a161bde1b7d10762fd50"
    "cs"
  end
  language "de" do
    sha256 "b9a53cd2e9cbed21f502c887ec958c7745a5413dc28b785fa2317dc8e29dc300"
    "de"
  end
  language "en-CA" do
    sha256 "553ec07206eb2081d14bf9c48d2af24fce45cc0272084639c8dff6ceabc9717c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cb35bdfc2228372de2ae0ddb9ccdc6dd14fb868e41163f71d7eb81a1210ddf1a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b6b15a54300d9087652d12006e2119fa6ea5b780dfe4414240739aa8378fcab7"
    "en-US"
  end
  language "es" do
    sha256 "7f5a62fb59d13d913cb717192db2fc97e3bcdb0a71b0167b228a2998fed51bf0"
    "es-ES"
  end
  language "fr" do
    sha256 "2c02ee551291d48d5eacbb91e40668d421a49c94447b1768081019ab1c68e0d0"
    "fr"
  end
  language "it" do
    sha256 "8f695284f5f8f046dadc6b8ffc05d6f53334e152402acae4c5e5493eb93a4566"
    "it"
  end
  language "ja" do
    sha256 "0d885d0c5b40b30100e9ee2fc1ba7d6d983cc23d45db49ab24e02357f8af9306"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8c5f8538230937c0b3dba8b20c18640fde8fa5971edd599f8a6a9af6885f6b47"
    "ko"
  end
  language "nl" do
    sha256 "b9fbf891c1c8ebcac666a174696f95891ff542da454ef423d2d6720fe35437e4"
    "nl"
  end
  language "pt-BR" do
    sha256 "bcd45b14c2a92f4216cba3cfec019c399db0f85343cb2519cfe5f3faebafde60"
    "pt-BR"
  end
  language "ru" do
    sha256 "af5b8f3c4a7bcc1a486871d01d66890e6a4d6e720468820c2622fc4f0a4bb3ae"
    "ru"
  end
  language "uk" do
    sha256 "b325a47ac2c62c30170bef62dfa61815194783155944cec0edb6ae93b4c76fc1"
    "uk"
  end
  language "zh-TW" do
    sha256 "aefb849306a7e40fb4c62f117d29b0f26d0d1bcf10bd11d5ba23e9825ee71a12"
    "zh-TW"
  end
  language "zh" do
    sha256 "41f0e8178f5e3669d35bc92b451200d7dc0e1bc13971694fbdc42755c228e16d"
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
