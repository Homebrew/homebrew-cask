cask "firefox@nightly" do
  version "143.0a1,2025-07-22-16-25-31"

  language "ca" do
    sha256 "7d2a03507d120b6b77527fce6145455dbde5a5a35335a5809ce336bf49251730"
    "ca"
  end
  language "cs" do
    sha256 "6c7189eefbca3a8c3fa2cbadaaa6d624e9ff3c952d34f96796527d4baa94c2ed"
    "cs"
  end
  language "de" do
    sha256 "ef1c0d610b587242fa197b969e35fe3fda147bdbd32d35d90a0ff1747f34342e"
    "de"
  end
  language "en-CA" do
    sha256 "0d97cde1abc815b05e85e9e9a7457a2f1be446d6f8bf1e0e4bab092efa50cfa8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "66db73fe1d930abebe7fc14bbde5a51e0c0f8e49a5c70058f0686fffb6eaa2f7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "420dad59a1b4a8c3b3f1cd2ace0aa8531b02aadb49ee09321ba7f0b7be5d5d3e"
    "en-US"
  end
  language "es" do
    sha256 "d28963aade10e71faa575bbea24a13bf340169076c51f0d710b08460a5ea0a17"
    "es-ES"
  end
  language "fr" do
    sha256 "05e93b3785791944d4d8f3dd1c64da7ed4279b9f59c33d01f97ea5be90f470bc"
    "fr"
  end
  language "it" do
    sha256 "231a308b6ed09765024343f9357d1f365137725235b85ad3342cb64880d73893"
    "it"
  end
  language "ja" do
    sha256 "40bc8ade332307842495396331bd3cf7cea73bc6c8ba518f81ed78bbb903dfa4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d36b004ed1a17540a775c5c00b65b5d5bc39d8800c372006a8713dd11f1c50a4"
    "ko"
  end
  language "nl" do
    sha256 "5f34a98da6c4bf4567e22a83881df8c43eb8781344ee42cd582bdd4965c41a90"
    "nl"
  end
  language "pt-BR" do
    sha256 "be2d5cb92822e2ecbaaf80fb9c4f9495071e46d9a91ed07b930b84eb80c91308"
    "pt-BR"
  end
  language "ru" do
    sha256 "07e107857050ffe14ffbe1c6c4036932e88c1c9510d0886e654c3f5cc798e4db"
    "ru"
  end
  language "uk" do
    sha256 "e2e5f21cf665881a7d86b56824b6cae7e3b60d20fd92960e9ee0cbe54dc3cf23"
    "uk"
  end
  language "zh-TW" do
    sha256 "938fa090b218feb4c9b9c8e59db7534faa73f03d51bf07d7e67867bb449e8c8f"
    "zh-TW"
  end
  language "zh" do
    sha256 "c25434a8b0d9f17055a3f6c72d11188b91589e71a6620150b7d9a93eb59403e3"
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
