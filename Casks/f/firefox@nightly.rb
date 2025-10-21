cask "firefox@nightly" do
  version "146.0a1,2025-10-21-12-57-38"

  language "ca" do
    sha256 "ce8c696ed766eb0c966f1c5274e13f259c1d30573a5a73b1a180d1565b738dea"
    "ca"
  end
  language "cs" do
    sha256 "47b961a7c3ac7c594af7c53ad010806b67c151576087febb568a025f390e7acf"
    "cs"
  end
  language "de" do
    sha256 "f875d398fb3f860ff982b44214c93bf29321dc6958a42966cdda66d8f90af3e8"
    "de"
  end
  language "en-CA" do
    sha256 "130d99d246fd6c4d717c8d6669be9bfc70e8404c1c7d0114ff4986605b47ee59"
    "en-CA"
  end
  language "en-GB" do
    sha256 "81d0a11501532d27842fd98c2746b53087cc83d1ff4555323359a9936db4398a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0795d16042f48430a963f6cc118b3c6219868172eba8d05cb46e4a08cb6b9299"
    "en-US"
  end
  language "es" do
    sha256 "47f30592000c4707869a958ccfa8077c6a10422446e4917aaefb594edf0f251c"
    "es-ES"
  end
  language "fr" do
    sha256 "ba21547a517ef96b034d9a389b416279e45b95b96b4a657cc59aada666f2600a"
    "fr"
  end
  language "it" do
    sha256 "826db14793214b6c949e1363067f206cc6bd1b854a2be7fde7da8d954499f847"
    "it"
  end
  language "ja" do
    sha256 "00b4f90628388872c4115f7f1216240cff2d00c7e2f2d98b5bb61c50ccd2ea49"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "139bfc5d9784911539fc8b94a1274de736cedb59c64dc8a234caf78168c233f2"
    "ko"
  end
  language "nl" do
    sha256 "6cc19cef9bcdb91658efa8750d9d3142e713f38b90eb21bd4b1df10347b481e6"
    "nl"
  end
  language "pt-BR" do
    sha256 "d473be965548add6f93d5da720be202aed7ca7dcd59bcd26debcce7faca4c5d7"
    "pt-BR"
  end
  language "ru" do
    sha256 "526b8089b8366a70f5c3e190992f92fd9cc4b742758498485832c143c6c392a0"
    "ru"
  end
  language "uk" do
    sha256 "bdffb6ac1cafbb07409a1cdef81826424a5493a912aab330b859e8fdb9a6b012"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e4c3dcb9d3283294c11f17890c2329ffd7bbf43cf95a067ed5b621182c7ea1c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a3315fe38d88d41786fce1da547cc39f99e6731de6f946651a586ced86775b38"
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
