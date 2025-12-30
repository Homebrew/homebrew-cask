cask "firefox@nightly" do
  version "148.0a1,2025-12-30-08-56-04"

  language "ca" do
    sha256 "4dd39ec0fd2741ce1e872b669fdbe189c856fcd00c735a7d2d6a8391c86b4f02"
    "ca"
  end
  language "cs" do
    sha256 "0f31b13d720a9e6243891bf736f280e8cdb78cd90b52f6dd23cccc3adf58e795"
    "cs"
  end
  language "de" do
    sha256 "5340de2097fcb3574b3b1b104167bccdb0326ca891e6295e54973b9461896f11"
    "de"
  end
  language "en-CA" do
    sha256 "244e429fa40bb1b3b92b7f2f237cc1e306e452f16a73ab43becd7a5dae8c10bf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "92c969c0945bb2aef41e5d9145f31e1d4da1eae32edcc55d83947d42a36fafe8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e041c5e75fba71d3838590bc28f7e41b07d395a50eb76e0b0b42188e74e0aaf"
    "en-US"
  end
  language "es" do
    sha256 "6710149da4504d5d864606d94152e407e65132d3f9fecae0e4522d3c5be60bee"
    "es-ES"
  end
  language "fr" do
    sha256 "a22f5ec814cd749d22b70c97bbe7771be31476573c9e2972f77a5a56cf5422bd"
    "fr"
  end
  language "it" do
    sha256 "b0caff117b113d24868a9eb1ce2317a2e55dd94b6f7575d60bf37d4bea1b4041"
    "it"
  end
  language "ja" do
    sha256 "e4f7943dd354b57b9febf26cf25325583083e5860e7befe9199582f87210ed35"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1e8b5d4e10ad55302c8c1cf0a05c25f5da8fce746a55c803a669a8abaea6747f"
    "ko"
  end
  language "nl" do
    sha256 "732b25d6ac2a29b891758cdb9001e915efa93e485d76a183914d1932d40a1a9a"
    "nl"
  end
  language "pt-BR" do
    sha256 "9e60bb10d80ce1c97338ae18f9bff75591ce9e39562af4bb424d9178d25e1a32"
    "pt-BR"
  end
  language "ru" do
    sha256 "a5223f40e80ea9129772a1a0bec95745614e02033a958a36c79c43bb7a4d5c0e"
    "ru"
  end
  language "uk" do
    sha256 "e18c9ac5eaea3307c4c683e065453e2c3358272f52f73da7d8304238f8868537"
    "uk"
  end
  language "zh-TW" do
    sha256 "008f90e14a8d7151a8a49b8a03bf794aa4812eeef3b5af9e5246e47fea12ceac"
    "zh-TW"
  end
  language "zh" do
    sha256 "68071b5e1e25ff5818f0bfbbb009c2d5dca8fd8b4363646a4b5810684e3d4a73"
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
