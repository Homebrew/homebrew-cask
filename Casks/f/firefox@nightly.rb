cask "firefox@nightly" do
  version "145.0a1,2025-09-27-09-35-55"

  language "ca" do
    sha256 "1c01df5e6706131c6efa5f0b47aa8ec15b9f1241146098955abe54d7927d3a57"
    "ca"
  end
  language "cs" do
    sha256 "37bc80da3a1c1ca54b3cf367cd74ddf2affb0c76eec5e58bd1141630a7b66c1b"
    "cs"
  end
  language "de" do
    sha256 "48e2f539185bc89a2a65b1932b8adede4dd8a627bf3f22adf205eb8ce91f3455"
    "de"
  end
  language "en-CA" do
    sha256 "43aad12a84c1f629fa93847541810225aa271e40693772cd38d1a41953017279"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2c71ba288b81335ec761c7f8c7128b0e446acb0618e9e2269cacada7df325342"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8dd9e9828cb659c637d03d5d2859eef31a86fa8f5c324c11c0f61b7d46d82096"
    "en-US"
  end
  language "es" do
    sha256 "b96541a303539f31ab7b47a8bfa7bd6e1febeeff7a7a9183ac3463f202f49f61"
    "es-ES"
  end
  language "fr" do
    sha256 "80f599b96e04655112989dd37103ea959d4eafe8f7abfd689669dbb023ac7ee4"
    "fr"
  end
  language "it" do
    sha256 "4cc4e1da57fbfee156e1ee8a455e017ddc644920ab39ca2a24b3502b5960e67d"
    "it"
  end
  language "ja" do
    sha256 "0d0b1e490159bacc407c685cf41ad177f14a1b435107873ab297b0c63fbf28f1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "25ecd968ca0765098d4442212c8c622f166fbc7be7bbd107c970e250fa65883a"
    "ko"
  end
  language "nl" do
    sha256 "ddbd72eb428de505c7a8a035c9bfaf267ef985b5de027f7e110133aed9d2c69a"
    "nl"
  end
  language "pt-BR" do
    sha256 "f43e11db2f7fe694f694b7e97a33c5636e53a54f561b5fd5f153cedf140ae682"
    "pt-BR"
  end
  language "ru" do
    sha256 "b00ea399e2645afc1a5211d1cc4f73dcc38f17b8cd0435998eb7a9f12d7641f3"
    "ru"
  end
  language "uk" do
    sha256 "3a1f4c191a26c2c2fc68c19020d5215fb4f6930407940c227074bf8e3cacea64"
    "uk"
  end
  language "zh-TW" do
    sha256 "edbeadac01b7ced6ca26e16992931c877dc89ec4793402c2b45b522912e58984"
    "zh-TW"
  end
  language "zh" do
    sha256 "901553da892d7afd04791e84967b39d814918aef412aeb30df8ed565bc9bc3a7"
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
