cask "thunderbird@daily" do
  version "153.0a1,2026-05-31-00-56-23"

  language "cs" do
    sha256 "c252082d32522d9ef3cf9dbd2da21231e24573cc0eb4e4dc83a21311ce03d0e3"
    "cs"
  end
  language "de" do
    sha256 "07248a7dc9f8577a82914be18858f6599628b33cae478547b2196280fa81f2e0"
    "de"
  end
  language "en-GB" do
    sha256 "85e9b40735da39b8e1216691a1d51a620c63b1f4051c37eb8221b9fc6542912b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "01622f42c85dd91b041f11a64ec01ed3af8dab00e7ab71d8abcf2a9e26bc8d4a"
    "en-US"
  end
  language "fr" do
    sha256 "09c440002406d8b3f3646a0590b19a333729b989b4197181878d45f57f4c5996"
    "fr"
  end
  language "gl" do
    sha256 "b42cac460d750d39dad83208213f2c15b5d43eed0cf097da301b4c281a58ad52"
    "gl"
  end
  language "it" do
    sha256 "732941e1d13ab917ff2f92ad307e2b854ee40fd682e01145a0ccd98bbb6509e7"
    "it"
  end
  language "ja" do
    sha256 "192b3771df3014631bda969462f908f12559d2f4663fcddb8065913b149f053b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e4a080caa6245eb5df12d8205c08859aa43a6be9d5a37b7bf17e2c062d911e2b"
    "nl"
  end
  language "pl" do
    sha256 "b8a1d35a58704291e3ea81f2340eb76dc82ca67c36970e9b759bb22e99009a44"
    "pl"
  end
  language "pt" do
    sha256 "a3ab437e209363395c6770a42a34b4bdfe77d962ddc1d5b37bd515a717f904be"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3059973ac2def599e7ec4d97a691a8234ae74a02be117ac79049c30541ec5ce8"
    "pt-BR"
  end
  language "ru" do
    sha256 "4afb5b26bd1889cbfe2217a50b8fe24fbc3d1fe39958b70ea52f9981f71fdb40"
    "ru"
  end
  language "uk" do
    sha256 "3bc5c4ddf32aba27f3d3ec326198ee34b0bf08f3ebde20f8bcb0f40ce98cedd3"
    "uk"
  end
  language "zh-TW" do
    sha256 "4bc8e5cd96b0b193c7fce2762097b9a71023bfdb093012b956f433934cdd8dd0"
    "zh-TW"
  end
  language "zh" do
    sha256 "288415f6887a919e4a76bcbca7b9d7273610e0a03555c606e4094ad97702b8c0"
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
  depends_on :macos

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
