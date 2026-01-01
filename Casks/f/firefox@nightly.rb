cask "firefox@nightly" do
  version "148.0a1,2025-12-31-22-55-43"

  language "ca" do
    sha256 "be16c00c773f2883c8654841b7aba1c5bf8a24011be31d1bf7c5f324180fd0f8"
    "ca"
  end
  language "cs" do
    sha256 "a2a1dbb9e5515e428fdba78bdf9b1fb866c0a77b4dce3de7c7bc6f803e005aed"
    "cs"
  end
  language "de" do
    sha256 "3a5be10603dd2246cdc8efa8120ccd3aac956233127876e952f7d4bab2d47aa8"
    "de"
  end
  language "en-CA" do
    sha256 "bf5097641364a8b63044f0b23ab1fa63ca01fe75ffb0cbf112c2b2ae0ce224b0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "853c54ba8a1d534d6494d95bf8cb562c6e5c3218ae97b6774c542d361ac41e64"
    "en-GB"
  end
  language "en", default: true do
    sha256 "38e27a0527fb5a947c0d3337f7f3c94dfaf1466637f33cd3cc8c99d7647be2fd"
    "en-US"
  end
  language "es" do
    sha256 "2bf1d3cf8c1c1312ac2d0be1a55ed8ec1ee64ac1875cf2df350eaa50031f977a"
    "es-ES"
  end
  language "fr" do
    sha256 "260dfce05648e946d289c6c7e21582fc308bb8414e07cd512186251f67cbd865"
    "fr"
  end
  language "it" do
    sha256 "5ac2153bdb45c1cab7d830d75964e7311ba8134bb7438c80863b405726cb3efb"
    "it"
  end
  language "ja" do
    sha256 "e0e8655fad51cefc9a89dfc59eed7a17d5b7f9f45b281b728be2cf6c2e8f97d9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5f8a1a0a86ea5563640158c7799a33eb0cd0cab0beea985e7237440727e6f50b"
    "ko"
  end
  language "nl" do
    sha256 "d89525232df2684b139758216e77c883a02e7187aa061a8fc4eca98655b7ee63"
    "nl"
  end
  language "pt-BR" do
    sha256 "741afc8ebc3dea753609bac90164d813e46e08f2b1fd3fef1cf96c82ec2c58fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "c53d962e510c1101e3865c091cf3af244c793b58199fc6cdb88d8771123e4267"
    "ru"
  end
  language "uk" do
    sha256 "ea9c0a403bea4518e169872133b72701127fcdee4722f097640fd20ca0b71f1d"
    "uk"
  end
  language "zh-TW" do
    sha256 "ef76a9d9f95547af82908eec01e8b13e16513be6359abb33aef5840c388a6b09"
    "zh-TW"
  end
  language "zh" do
    sha256 "077b35812b03c6f3a63ee02477d6025b213f2af7135f3dbac811fc3982568230"
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
