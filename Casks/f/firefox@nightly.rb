cask "firefox@nightly" do
  version "141.0a1,2025-06-19-21-40-31"

  language "ca" do
    sha256 "caa1c641bfd6f33d3278a4e981ea4118f0e5ef070f108f83dfa39d05b0401cf9"
    "ca"
  end
  language "cs" do
    sha256 "024cf7766e984b3804885967cb5272e70bb93687c3f8ad6350adda023da525d9"
    "cs"
  end
  language "de" do
    sha256 "bd02789465c160e63f4b4fcad21dde3fe595e4999765a638cc0c38b3b76a604c"
    "de"
  end
  language "en-CA" do
    sha256 "b51c305632d30b7cdd7666dd2deb4eb8bb9047f90952cdcba9fb9b360b6f25c6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4510305714afc282c5ecd88cbce82b705fc5bfa8015877c1e725fd4f3dbaae65"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eb35ccca4e9f599d777cb67d31fbd9c908a012d8bb65832e2fbb8bcca25633da"
    "en-US"
  end
  language "es" do
    sha256 "9fa8c74957b83efdbf1bf0609136792be4d1de6122bdf53595e7d164e3076e44"
    "es-ES"
  end
  language "fr" do
    sha256 "551edf218ddbb2a0a005a8e26d676d425d349eef2d41cd61084b28cddfa4674c"
    "fr"
  end
  language "it" do
    sha256 "6123017be905294597d81b63146249efc41d04069767d0597a2ebfd8010f03cd"
    "it"
  end
  language "ja" do
    sha256 "afa554845ddb9297ef68c20bfe0fce58320fa2bba2dc3bc53c4bac6aa4914bba"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2ad87478b44918b9e0dc4c225a1da8a60198ec6f2639202a16a8756d6e5eb14a"
    "ko"
  end
  language "nl" do
    sha256 "124d7d144d255681bc5015e1413e829fa428084858e9ba254576fa59751031af"
    "nl"
  end
  language "pt-BR" do
    sha256 "161a6ac94c1868b79259704279a468f5a1e6692ba04083c2ba9459786000eba8"
    "pt-BR"
  end
  language "ru" do
    sha256 "64d817585530ed394f20ccedf2fd67ea4063df2c5ad3306b5d643d6514a86081"
    "ru"
  end
  language "uk" do
    sha256 "36b49e2118210b491ceb583a37643cff61257e71a167c113cbbea8d18e4cd2c8"
    "uk"
  end
  language "zh-TW" do
    sha256 "871dcacba1251cdd8f00e2fb45af5f0ad2e2f5b4f546368e520a2e97e9ae64c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "733d31e43efcdbadb1febbdef4586ccd4961526e7ffd90e0aee4ac8a05049cca"
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
