cask "firefox@nightly" do
  version "142.0a1,2025-07-11-09-13-24"

  language "ca" do
    sha256 "7a64ab0a6d3e1149c09f6476a4eb55c01698e378b3f19dfe5c077705de0fc8c2"
    "ca"
  end
  language "cs" do
    sha256 "d73f1ee2290cdaf2f4230088403d737efa78241fe9d8fe94657f89b0973b07fd"
    "cs"
  end
  language "de" do
    sha256 "bb7f98f4fb835a2cc539423d61ba6c23ad938b8670efbc991aeccc3326b72f0e"
    "de"
  end
  language "en-CA" do
    sha256 "987672e952810994d9622d2351166f237c0eca296b7bbdd6f1d62f9984796ee8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a68fbdaf081d278dd4b31d4b84730d98006653147ed06bdb6b1a51f91c922603"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8686392e726963fc75f833715519fdad529697b2a114ef3ce235be21bb33448e"
    "en-US"
  end
  language "es" do
    sha256 "99df6ba3858c38120fcf2c02055e662eb945f8a36be24a727f7d3503d9363b95"
    "es-ES"
  end
  language "fr" do
    sha256 "3013222498661ff155b1e4d66bdac9bedbbcf48f89fda6323812490960d7311d"
    "fr"
  end
  language "it" do
    sha256 "391c73f877e3877070e4413d20eb74d598c29c319023f0a8fff5abb369b1a5a2"
    "it"
  end
  language "ja" do
    sha256 "c9b4506d4309fa9b49ab4775d45992252298d9db3ada41bc84c8aed900524ec9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1608e51790ed5bec3ed38b03354605de4e7db9436b8a496258409ec97637995a"
    "ko"
  end
  language "nl" do
    sha256 "47cbaca86643c2d4e0ea8e8db72cf98c4a4c9827cc3fb03d47c332cfb2fbe6d6"
    "nl"
  end
  language "pt-BR" do
    sha256 "c78e6440b650079f9b1e905fc61fc533ced8cbb583db39f6237e86c415c83b69"
    "pt-BR"
  end
  language "ru" do
    sha256 "63654d656ed279be3d4c090ff9b5cbfd135a0c45e22b48d5237b3d90312720b7"
    "ru"
  end
  language "uk" do
    sha256 "b47e8603d6ef937979cf2a17e1413fdc0ed8ab0ab11a68d9acab502ef313e87c"
    "uk"
  end
  language "zh-TW" do
    sha256 "5618775954563e5b135bd90fc3d5ffe5cbfc06401873c101e67aa066e4b99900"
    "zh-TW"
  end
  language "zh" do
    sha256 "8555d7cb06a9d25bc15ce4442f87b00ce444114e612774d6292a6d492dd68c15"
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
