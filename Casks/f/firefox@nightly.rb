cask "firefox@nightly" do
  version "153.0a1,2026-05-24-19-24-43"

  language "ca" do
    sha256 "a89445e76d69d1894e8bdbc2169f35922b85d8990d9b42db9b9c71f6cfaef98a"
    "ca"
  end
  language "cs" do
    sha256 "47f6dc2edf6112276943d2d93e6a0e7837b8f0cecb6f643884ef330effc9f51c"
    "cs"
  end
  language "de" do
    sha256 "0b0c1162fb163a7e6f90505ca08e1a1a6d78d53a5e553c6adc7ab457bc7de665"
    "de"
  end
  language "en-CA" do
    sha256 "82dc48dbe27441155b9148086c13e1478c76807623556f500ca2c352f908c950"
    "en-CA"
  end
  language "en-GB" do
    sha256 "725eb26d092fd352baae4d948e384c340411559ea66e2edcdb6f4498d77f24e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a67af56e318387702dd114740f587ff413f4ac8f7edcb68c3641729c03b35e7c"
    "en-US"
  end
  language "es" do
    sha256 "d885c1bab8d216c4c131a6db076067f6dc4ce36167921068a6f74d230e2f0356"
    "es-ES"
  end
  language "fr" do
    sha256 "9271b646658999ae75ad6ebbad513c58c11a498424ade37f5216cf84fc954020"
    "fr"
  end
  language "it" do
    sha256 "60b59c25029b09c8578e2dc591cac5cbb57b64c22cfd6afd30d991cd704f063d"
    "it"
  end
  language "ja" do
    sha256 "38f9dc212cad116703e840bac01704c89115a5a7ada71e64162bd8ffbc28fe70"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5b3cb55df4c9cad0eb4823c6d5e81c29e6f65aa87e6fb88755b182cc032eb478"
    "ko"
  end
  language "nl" do
    sha256 "6b0d86836c2fc292906c1ce463206f86b700cda100be7f3d6a97284659c02c63"
    "nl"
  end
  language "pt-BR" do
    sha256 "d74d428e3bb9e4b03436c67918cdacabc4fb0dcc194aba54dd2fb70888c7ceea"
    "pt-BR"
  end
  language "ru" do
    sha256 "b4940807ca3e3635d934b0059091e992ee449e6821498c1fe3b73614d1e5090a"
    "ru"
  end
  language "uk" do
    sha256 "4ef3fc22f27cb221edd982ee7c81cf8a97cd08ac684f507bce922000e396ed9a"
    "uk"
  end
  language "zh-TW" do
    sha256 "12384bfbc790a647bcd1192a2a77f27ac33ab3d0c2296651103243d4e2c4c1d7"
    "zh-TW"
  end
  language "zh" do
    sha256 "8da5621d6360a6f9044fa9540cee1af0c401a7d57659cf0b12aae40c20b1fd89"
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
