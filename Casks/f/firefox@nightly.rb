cask "firefox@nightly" do
  version "163.0a1,2026-11-26-19-31-50"

  language "ca" do
    sha256 "df7f660fdbb1724d3b8ff322f767e3483035241825b08fa141e6ea1f6550d038"
    "ca"
  end
  language "cs" do
    sha256 "db8a0e0dbe03ecdb5777c03841d84af9b2c699d689f264ebdc6a2ae05e223269"
    "cs"
  end
  language "de" do
    sha256 "f54eba5001cbf983567a0bdc59d37e93eab35b8f407c024d68f6c1839f057eb9"
    "de"
  end
  language "en-CA" do
    sha256 "1c46ea94f869af5a98a763f1d6cc69edcc8aaa973b066cdc346938d155a739bf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "acee219fba05ad8e19cb8dba5a9cfc77d1726581ec4dde83874d749d8752d7f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cfab5625dd5f443003a66cc4359afa15b626c5c332fea69425c5cf53b20aecb3"
    "en-US"
  end
  language "es" do
    sha256 "2644204591206130aaea90ee944f20be2dc90c713a96a6fcf003bb47ca596755"
    "es-ES"
  end
  language "fr" do
    sha256 "c042022fe456f92b043121642ac48d85dba0aa2c7488a1ba4c072704cdf752df"
    "fr"
  end
  language "it" do
    sha256 "7a57510b615ddde8445543362150fc60ad9bf92dfccd3406dc285e9a63b7e8ed"
    "it"
  end
  language "ja" do
    sha256 "6e4ed22c0ea6bc4d9bcc8d271ac150a33d6acf55624618ad8c5f711f9a4753cd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fae8273d419efb8af0a9ae7a1ce2b9588ab019cce83a938b8091a5ad239520dd"
    "ko"
  end
  language "nl" do
    sha256 "548775fb7c75ddc2e8bd3f02c85370f87dbf01aeb18c1f5a6f1c2714e2fdf8e6"
    "nl"
  end
  language "pt-BR" do
    sha256 "a1923f6528b797aa32e2ee218381b87053c996f52954e8b20f340eb304361f65"
    "pt-BR"
  end
  language "ru" do
    sha256 "f0663416abf13c2ce300650241b1d21d7afca546132ca3751387ccd24071dd29"
    "ru"
  end
  language "uk" do
    sha256 "ce4af4984dd73f427df137e74ed9f1febb242b38f5a518cd15d455ea15e613dc"
    "uk"
  end
  language "zh-TW" do
    sha256 "12c4ecbcb80170ef06345ac408767b49ee06be5e63c4f52ba9429896b8f83697"
    "zh-TW"
  end
  language "zh" do
    sha256 "d549917ffae8226ef5860ed4b89c8e3578e0bd15f6fb2c810f140b05d0c0c6aa"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
