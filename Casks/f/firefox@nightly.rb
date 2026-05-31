cask "firefox@nightly" do
  version "153.0a1,2026-05-30-21-03-05"

  language "ca" do
    sha256 "5f8931de26ee17e0ba938e52c122a88b3c52396e683ae2aa35a24b774149a653"
    "ca"
  end
  language "cs" do
    sha256 "abb8b3237d68298d707348f02fb18dafcfcd764f1f9bf0d22aaa07ba5565c339"
    "cs"
  end
  language "de" do
    sha256 "c7c12fc97a3bc41c31e3b3673f10f3914201a4faab7160a7dcff22e23a71063e"
    "de"
  end
  language "en-CA" do
    sha256 "ab08f483fa942152751720db88efeb3325ec7737c9fd532f6e33c3a099af273a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0e54e54652b85bc1c24d3f1e1bfbb1d61495d9b00799db61c54d12f3860a4876"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3f80758a39dff85c56a7dd6e12b407f53175b50d5a9271074979ddca4608b8e7"
    "en-US"
  end
  language "es" do
    sha256 "c448bff8054d37c983a762163d1bc6665716e093abe8ee275328ee21c8a81c77"
    "es-ES"
  end
  language "fr" do
    sha256 "88b414b030e6abdc6ae70f5db8199d94639055a750149890e9dd87bb091f416a"
    "fr"
  end
  language "it" do
    sha256 "150f4840c10f8e018067b5478ce3ba98cc00a469d591884396902dc84a284a48"
    "it"
  end
  language "ja" do
    sha256 "fd99178cda397a32517fb59fc1bbba5769c4f737d6785c4ad0b99cbd69b97379"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5b9df973a845f2016a5d10413961d030acb1261e094017b498ae354e6a1899c6"
    "ko"
  end
  language "nl" do
    sha256 "a513ce66198fb00a5daedc5d560e76dfd907dc2afdd1551f2ffabf92ca7e213e"
    "nl"
  end
  language "pt-BR" do
    sha256 "7f5d69b0db8f9de0d1d5ac8fcc336aa187871c8fc7ce6a09f805351861ef6644"
    "pt-BR"
  end
  language "ru" do
    sha256 "60303402a341fcfd7927add1335a82fad26f6ebd870defb8c23537d408564457"
    "ru"
  end
  language "uk" do
    sha256 "3189aad2ae6e2db400ce9b1ee048224570125ba4daf2d7934fc1b56801edb4d4"
    "uk"
  end
  language "zh-TW" do
    sha256 "d94ccc885c3fb95f22af79fd4598ab3963777d54df2de29ebcd440720dbd16e3"
    "zh-TW"
  end
  language "zh" do
    sha256 "053ed0f16c084bc4186ff102e67367f4ff616aa9a2f15ec0be3c5a4b26b6db11"
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
