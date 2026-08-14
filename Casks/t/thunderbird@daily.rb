cask "thunderbird@daily" do
  version "156.0a1,2026-08-14-10-13-20"

  language "cs" do
    sha256 "617bb025d631e88e6216e4b9b152d812b3249287d1624363b43008c6ca6e626c"
    "cs"
  end
  language "de" do
    sha256 "e7c9cd20680e8eb3d171df9ba82c8244823a72ec8d76a181cf0224ff80d43e45"
    "de"
  end
  language "en-GB" do
    sha256 "f74cd5d814958bc5ffba8c2ccd5afa46ab1120c2b57baababe324cd6a93708ac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7b9b3f3e204e876b5d96770c8a70d334b07c06206cec97e1afc316c5c2d0ae3d"
    "en-US"
  end
  language "fr" do
    sha256 "60992989ef1dec11d71631af73a63f509073864547c34c87b43645ab5fde11d2"
    "fr"
  end
  language "gl" do
    sha256 "605418dc3ccead2d51bc257f33f26f3d1117724eeb480798f286d011f4e8bb3c"
    "gl"
  end
  language "it" do
    sha256 "1c9f135b3c5c2d359f7a9097828eebbac0afd49bd0247e0facb986eb26a8543b"
    "it"
  end
  language "ja" do
    sha256 "2602dd54868e66d0f93d10006d3b6f5d127dd945ff18814f03344381f02e54e1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e6d02159e3082d1e6401dd27f87462fa0b42ee6711d64d99dc0f8d7a66811278"
    "nl"
  end
  language "pl" do
    sha256 "ea9c84d5fa87d7574a61d788c03059d1e98f36e3a92a48dd67c7aa6be33fd2be"
    "pl"
  end
  language "pt" do
    sha256 "2a4482796a1a2b588ca969b09e6ab514a3afd09c044cada6bfac360bbfa71612"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6f215baf40f573c4bf26f9724edf36aba2c3d0c543c02747c87a97bcd7ceeabf"
    "pt-BR"
  end
  language "ru" do
    sha256 "20393d7cf80c2ea430658b2860a9c60e1ca5785ae6be8b5d29897113a8866522"
    "ru"
  end
  language "uk" do
    sha256 "6ec8a0110b60780244ecfe5fd3da81f6e81b2a29a7a5916a854f6023cdda0cb8"
    "uk"
  end
  language "zh-TW" do
    sha256 "bb87362da0021103245bf2bcb4d5e323fba5eb0d92b7f2c38e20be607a72e1f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "637846c89fedd1cc3d3524a533d6368c84ed87318b5fc7670df0ecb164da7cd4"
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
