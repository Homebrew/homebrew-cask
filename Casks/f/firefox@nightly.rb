cask "firefox@nightly" do
  version "152.0a1,2026-05-08-21-26-40"

  language "ca" do
    sha256 "2e6faef2564ce8a6d4e21a372b0c110700ed46cebebc1d72c6b804459ab1e47a"
    "ca"
  end
  language "cs" do
    sha256 "90977b5ee31791950d26c55009c05df2e8976831f5caa0576e7e7fd62609c0aa"
    "cs"
  end
  language "de" do
    sha256 "0dbf484a0f7b8ac76bb332a43703c15dbf2407c13250933abe9d24d03bb682df"
    "de"
  end
  language "en-CA" do
    sha256 "e227fcfaf6d67997f5f482644d9aa8e2f60fbca2ee3c89fd1cd5f93e4dd99b0b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "52537ead9c9d382a29326eb88ca93762e911de735a88f5daa7774af4ae6c2d5a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cee47d17d64af120c0d132b7cba9e4e73d502248a4db9293255e1cec616773d6"
    "en-US"
  end
  language "es" do
    sha256 "b9271ddb58f159f0f4286f1ebb78c2214417312f2613eaae7f7bc65822992328"
    "es-ES"
  end
  language "fr" do
    sha256 "8f94c3f1ec698bbe4a503bd144ba0823bbb8e4778b7a1aa105144f3aef445132"
    "fr"
  end
  language "it" do
    sha256 "6a8f5ed3a8f8e9f7b3e7ce700cbe8edcd5c9410fadb87429c5a71ba548bb2a7a"
    "it"
  end
  language "ja" do
    sha256 "f660040e3a1f09f2754fc7a24a5f74c1feeac65bb6ea70b965319af933483d20"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "83764658c32bae3a39134bcd0400881613c9822bebab363a9ef77f361d2b8b79"
    "ko"
  end
  language "nl" do
    sha256 "4e574c0ba56522c9d6a93285a68e125dd2dabe32d7ac52c79dc860988d9f5568"
    "nl"
  end
  language "pt-BR" do
    sha256 "7b16169d504ce7afb5acde7f14863e3fd4df1451437b054671670e80a1f6d0b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "547b73d11b51aaec0688448d9e2a1277ac013f5066a23b7559f1789b4624fb16"
    "ru"
  end
  language "uk" do
    sha256 "596aa21d8135180a39816b028a9c752653f09a6f7401077c7e11651ede3e89c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "5be2ee0f9179cde27e2eadb636b60fa261ef35840dfb18c5fc79b93f6b848bde"
    "zh-TW"
  end
  language "zh" do
    sha256 "3405bc384e7df8ffa36a7e09564f84c4ab24d2195de0efe3f94ef107c40215e8"
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
