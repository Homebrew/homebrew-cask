cask "thunderbird@daily" do
  version "140.0a1,2025-05-05-10-03-24"

  language "cs" do
    sha256 "a798671e0e2a4dea81f4c93797ee8e83e0608da77f2bd0c66d7c4a71d71a3cdd"
    "cs"
  end
  language "de" do
    sha256 "564b416a8b226d425ce931617a66969f5de53e70e3a0c4ceab1456475336f552"
    "de"
  end
  language "en-GB" do
    sha256 "c569e4edec30b908301989ecf93afdbc7a3bb63ebdd741e9f16fe69afcf06439"
    "en-GB"
  end
  language "en", default: true do
    sha256 "24455344bc8ba78321dd6d307abfbd0ce9f99ccc0d3a148c034d7633e649dc29"
    "en-US"
  end
  language "fr" do
    sha256 "0bf186c85d4bd6cadc083b194d0345aa9980cb14e5b604c05e22400b4efefba4"
    "fr"
  end
  language "gl" do
    sha256 "1c3a7fccb9cb6f52c1fd16c6a416f51ea439217ba1420373c74b77983c154526"
    "gl"
  end
  language "it" do
    sha256 "a4c0acc99aae5aa6dc971a07a0f03ec14a85518a1e3998bb8d17caba24c2488d"
    "it"
  end
  language "ja" do
    sha256 "d0abb6098963265806b14dee97a26d580829aff2129ccd78560a24c99e1935cb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "caf5498b6325a6e01a79b15b85babcaa8cd7689bd43ef4f72cbc594bf601169a"
    "nl"
  end
  language "pl" do
    sha256 "65cb5fd594ed3569074320bbb5584d97f7697e460958733a849287acbd9740a9"
    "pl"
  end
  language "pt" do
    sha256 "22643810f75bbc41f3a5c8e62bf9c41de94508fa3301bbd1a89f5590eee17a8c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "521a0cf3daf646612a964e4911e47af05cd21968c54aeede0d03128c6332b79b"
    "pt-BR"
  end
  language "ru" do
    sha256 "d22a2b9c1363f5e95c5142d37500e24249412c5a4d2821719323aef066b69858"
    "ru"
  end
  language "uk" do
    sha256 "73e8cbe0fa5ec64f0847ab64556e3522653f273fafdd3cac03dcc1a3d6e969b8"
    "uk"
  end
  language "zh-TW" do
    sha256 "a219fd1e81a3c19421ab8659f25d47f7cab401aeb73bbdbb4f9ba57d10d8f0d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae74b44f1fee8d345e451923f8df41af6b5268907dda19f46cfa97ca1277af9a"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
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
  depends_on macos: ">= :catalina"

  app "Thunderbird Daily.app"

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
