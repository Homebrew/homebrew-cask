cask "thunderbird@daily" do
  version "139.0a1,2025-04-23-09-47-44"

  language "cs" do
    sha256 "fba81b094e1649c73e07d01d8f0776c5b25c36c90279bda8c022090fa7d5845e"
    "cs"
  end
  language "de" do
    sha256 "9f92ef5aaf12c93a2d47a0fca276f2efbe8280515c96319b1da46000023857b5"
    "de"
  end
  language "en-GB" do
    sha256 "0c548b5961b593558c901d6e73057bb174ff7f94ff57d4811d43e29a5be50cfc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6c4ac3fe251a55ed071ad62bcbaefe659d84d81ca594ac8e5fc5e6f600779db8"
    "en-US"
  end
  language "fr" do
    sha256 "a9558a99ce58ea42abb97e0aa2aa0762e28964294538c0ebaef0060d6eb79e01"
    "fr"
  end
  language "gl" do
    sha256 "1dd116409c8a808852ae0ff79da78555c346a27aff7098be2cf857f247ac2a18"
    "gl"
  end
  language "it" do
    sha256 "deaf5ff1dd1e33db925a19068225cba69b802efb3091a04b44545942166410aa"
    "it"
  end
  language "ja" do
    sha256 "2acbf69406992729a9d47456f2d46bc3d2058504b9071abcfa4bb78bf4644c9c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "014673f4dd9c4793c838e863a0ca8cb740acd8021d4bd6ac37712776f6989893"
    "nl"
  end
  language "pl" do
    sha256 "8a1ddab990b82a9c847724ae9d54b613e28fbc359eb6c6e120fcf14aad017876"
    "pl"
  end
  language "pt" do
    sha256 "af5dddc6d4d8828afa1cd6478604cf7b5ff38692ac7c14d22dd2eeb1fb78227e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d1c47465d212805338d3baff227743a83344b8b81a80f041dbdbe959aeaf40e1"
    "pt-BR"
  end
  language "ru" do
    sha256 "154187e187f919267b4027f13c34af174d188592ec2c648da449bc1125cd9359"
    "ru"
  end
  language "uk" do
    sha256 "81a701e46f71ad113e00ee16b9aaaa3cc11e35d47a9acc68cd2e5be7d0b48466"
    "uk"
  end
  language "zh-TW" do
    sha256 "062c14e9f32c0db64afc44ab56f692a5f7ed80a0c855402475669759276e3bcb"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd6599185780092b02a8082d380efe5b17ca0202a6e5342f19a80aa571e96ffc"
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
