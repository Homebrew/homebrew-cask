cask "thunderbird@daily" do
  version "160.0a1,2026-10-13-10-39-53"

  language "cs" do
    sha256 "9e0cdccc17e441851d73cec7b974dfa1ef60669876f5c8db1d4fa0e91e86657a"
    "cs"
  end
  language "de" do
    sha256 "efd309f1694a75252ebb8125b2c2023abe087a8810b096e9ce56967b61375e43"
    "de"
  end
  language "en-GB" do
    sha256 "8c645cfcef89ff5bdfc1f2c09e672af21fe6c6173eae4fc5432234e98d2a69f1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0ca4d0a7b198dff9fa9a2cc03054aee02f1fd77ae722874df185eeabd57f60f9"
    "en-US"
  end
  language "fr" do
    sha256 "5d265ab7dd6b28b25645b45dd293c44aa07804476fabfe595107c7fb3b42dc39"
    "fr"
  end
  language "gl" do
    sha256 "4a40e97461ff9092e3e18c48de96c3c4640af3d14096ba4fa3c91ebe7d964027"
    "gl"
  end
  language "it" do
    sha256 "a6e8331efab7fa47790182cf7d5bc419389e4f1316ad2f5fdb918d46a6afb4d4"
    "it"
  end
  language "ja" do
    sha256 "733ece322d643cee8d160dcdc061e31640418213baacbb6eccd0b25cac3fe0b6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "62fa69fc79d5107dc253392182aa1d92b8a97b6d429000b5cf591812303a1c1e"
    "nl"
  end
  language "pl" do
    sha256 "d0dea22c37d95791ddd22d7e2a175cbf1c9a63d7466e7a315dc7a0d7a6afbb76"
    "pl"
  end
  language "pt" do
    sha256 "b8ceddb90698f6f5f419b76e2bf19c6271b746435c996507d8fed01660ead389"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e742ddf5dfa6607265f1e923e916fa66abe380a2e14fe64fcc5dbeb099c33079"
    "pt-BR"
  end
  language "ru" do
    sha256 "fd8e4312e03642675a11b98fe99a63974c7228236114bac2169b0a2deb8575bb"
    "ru"
  end
  language "uk" do
    sha256 "a8c93d0f75a51f5f87d9f3dd8c0cabc4c67a6c79295f7cc505bc7bce26cd133c"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f2263b61cd50960f9aea577da16bc9f50e6b43db885e341ebcb31610c5cbba4"
    "zh-TW"
  end
  language "zh" do
    sha256 "87cf920f30eb1f335c1a9b41e6e3d711790a2e0caeeaa507db3e30ab34087f65"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Daily.app"

  uninstall quit: "org.mozilla.thunderbird-daily"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
