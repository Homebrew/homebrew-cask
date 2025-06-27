cask "firefox@nightly" do
  version "142.0a1,2025-06-26-21-43-51"

  language "ca" do
    sha256 "d858909ba92296bcd5d3e98af971bb667ee303219ee4ccac86bd0479985f30d9"
    "ca"
  end
  language "cs" do
    sha256 "b9a6bdbca1271410863c2575b09b7c220a4f4768f7e5130c6ac3aa4b7c024d78"
    "cs"
  end
  language "de" do
    sha256 "dbe414b762afe8462ed3dc1239b920e98120656d812889006a705b25864c7731"
    "de"
  end
  language "en-CA" do
    sha256 "d3bc6bf2890b6f5b6012daa98fddbea278bcf81483cd889962893c625c07e2d7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0e60da3ba3f7411d8d7171a215e52a58a9302cec49b1a7e1682f8363e07724e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1a231f46ebe6166c0ecc241fab231c37c12d9f62a611a25129a1589ee2d542ae"
    "en-US"
  end
  language "es" do
    sha256 "606f59e8278b8b47497a02b4e8fdc7aae6395d390aa26997b4f46db7490fb80a"
    "es-ES"
  end
  language "fr" do
    sha256 "992508ddbbd5ba764fb2a0fefc2e049a720b36cb3bcd90cfd684d6dc5958e636"
    "fr"
  end
  language "it" do
    sha256 "f6377a3d597df9360d84ce9290b85494688bf475f5c02722361fe67ba7fdd29c"
    "it"
  end
  language "ja" do
    sha256 "58dc9774de18eb3b2694eeea180056ca036ab92378ccf22f50e7a50f47f06706"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e5cb5e862a6f8092268110128c26946db540ffc9d989fd53b41eed19029a3249"
    "ko"
  end
  language "nl" do
    sha256 "6647b0202113300d693f66a8fda3ec6ae75a6281e059031696914c02b0af6224"
    "nl"
  end
  language "pt-BR" do
    sha256 "3c5c88e2681d8a89feb0be3c24da5a62d8a265315dfc070120070a34d52d06e5"
    "pt-BR"
  end
  language "ru" do
    sha256 "232091c4f34caa03aa60e6d0dba06f85634e6c2982ab232cde4a3e7ea05008eb"
    "ru"
  end
  language "uk" do
    sha256 "e20f73ee76dfd6eaff3cca5b0dfb41ecf2257c543e976762ca8c7df26fa083c2"
    "uk"
  end
  language "zh-TW" do
    sha256 "1bf3e91adf253454a7e887caa783b4cda0bf5aa356373ea277b023755e628143"
    "zh-TW"
  end
  language "zh" do
    sha256 "db73303ff28e9e859bfba586d8033b339945ecff1309a2c71f83bba7975008a8"
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
