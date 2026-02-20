cask "firefox@nightly" do
  version "149.0a1,2026-02-20-09-20-58"

  language "ca" do
    sha256 "2af43a34abfd6e8adcde87c27c0e84df52c7f67e4be97fee0874bb881e7a8db3"
    "ca"
  end
  language "cs" do
    sha256 "08fb98b651613c61a479b8c0ac91eebb7afe7a5f2d92dca93d2c3a5ba4457190"
    "cs"
  end
  language "de" do
    sha256 "b432b14969e5a7310f651c0fc15856fcb225e3e8d639176eba3ffd097903db90"
    "de"
  end
  language "en-CA" do
    sha256 "1d426d139f303189c94a357708582d319aa2ab6ebe882f187a589d28beac39d4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "149d6c277d52257d62d999a97d057d6ed36a1030304bd62a62efd28c4c254018"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72d3841bb151ad2ffbd23d6d67f37657fbdb670413a35b63ea64a83985d936c4"
    "en-US"
  end
  language "es" do
    sha256 "2addba407522ab6a03090c654e6307cd421bc1e2538295646e7d540f75b60cd8"
    "es-ES"
  end
  language "fr" do
    sha256 "2d751b5ce5d3596780a3a4b17735b20da25eac1493f1eb42236dbd51c37697f9"
    "fr"
  end
  language "it" do
    sha256 "f04508d14b8e1d67ccb0852875a739530316aa71fd79eed16b8a40672b106d38"
    "it"
  end
  language "ja" do
    sha256 "8b574cb433426a469cf56826472264f01f90f1c8efdcac874d59a723dfc11a51"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "41bd74d171ecdd4cd612bf58e9f94fe3b2551def1aabdd2f608da2beeef7a914"
    "ko"
  end
  language "nl" do
    sha256 "55eeb3a59b0ce900a49dc3f41b5075cf1aed0c7f9c323961e25683d04686182a"
    "nl"
  end
  language "pt-BR" do
    sha256 "cf0d01bf6df139abe6af6580b202b293bcad539635e56eb0ff69ac298f0ae224"
    "pt-BR"
  end
  language "ru" do
    sha256 "aba3845da262b68055fdbbfc006ee6e77fa0f7675ff88c99f3b2e12baa0fc5bb"
    "ru"
  end
  language "uk" do
    sha256 "b9e0b0f621db597dbe29b0d182f49176aea984ff900ac62202ec341b7c43ffce"
    "uk"
  end
  language "zh-TW" do
    sha256 "b4eb5177c6164a303c8232c45755481bd2d65944ba6528dca5b995f482f650e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "b9af7525a1763610ca3ad08b03b52424d40685c9b4de7f7711be61d9979e69b2"
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
