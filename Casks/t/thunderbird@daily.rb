cask "thunderbird@daily" do
  version "156.0a1,2026-08-22-06-50-07"

  language "cs" do
    sha256 "017b9af215835216afc91e54ffcd162a9f84e54a52890dd0375bf39036649954"
    "cs"
  end
  language "de" do
    sha256 "0d6ce450cee53e45239109bd1c5959f5ca51076278b49fe17437b20b6c738340"
    "de"
  end
  language "en-GB" do
    sha256 "fc46aae6630aa9a5fa90f4d01de7c0f29d3e9b3429aedbd57c7c4aef1791f45a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "066d96ad56993e4a9ca540392f27f0992ba64d7ff33831e3505155f684114720"
    "en-US"
  end
  language "fr" do
    sha256 "a79ed9be35779a176431904f50b3f7c9ee1064e9c77c673efed4d0728a69e157"
    "fr"
  end
  language "gl" do
    sha256 "76bd25366c2a04243700157547f0a899d7b951e180fc89077e8448ff371a13d7"
    "gl"
  end
  language "it" do
    sha256 "145c51cb23dcf5c2d7a68cc403070e629af0502988011a738685c8b5886ff84e"
    "it"
  end
  language "ja" do
    sha256 "07c4aab181d91b82308f4ce3bf4c787c79e23afafcfcbcf43fa1113d0565b48b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2eafb92ff1c9860b7b22b143a00ac937629e1b9739a51e81747b2269df35a745"
    "nl"
  end
  language "pl" do
    sha256 "39a51bc95011159c5781ad43ee4744718b2c848e34fc7038ee3fd1e30ea032f0"
    "pl"
  end
  language "pt" do
    sha256 "8637c7e1b74edafe211b3b242347a4f70fda3ae525b09c0bd2c2cbb331fd750c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "eb7067ec84a701353d5d0003e0f32aa64cf281001fd2d31f1d045d323de772fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "1092ce627017df18cc67270f70e542d4136f25c8d867a978b7370f74f5184bfd"
    "ru"
  end
  language "uk" do
    sha256 "5154f1939c9219477313819fce16e0c7b5fe5c292e1d3956587497108fd6bee4"
    "uk"
  end
  language "zh-TW" do
    sha256 "b98e987d125fd9b1302d33242db3437db74ea1c5a5a694f41471811529662946"
    "zh-TW"
  end
  language "zh" do
    sha256 "807f9662e07a8da6b26a8eb4b961eb744a58267278d40bc1d87e840278d45c30"
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
