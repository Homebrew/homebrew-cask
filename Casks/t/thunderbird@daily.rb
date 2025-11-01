cask "thunderbird@daily" do
  version "146.0a1,2025-11-01-06-51-36"

  language "cs" do
    sha256 "fc6030d6bb36dc83a0af4c988e9432390438140e9eec5cc97628688f075460f3"
    "cs"
  end
  language "de" do
    sha256 "9ab76af5a5099ed59ee1091718cd87007ca215cd48333dbd50bd9ac97e001615"
    "de"
  end
  language "en-GB" do
    sha256 "13dc4ca7e5d7374d037b10e75e5a95032e31e2b1d5ec77ed7beb186879b8f748"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5b153772856eafe32f1415be5eccb6bd16edf4f83d14205b6e142d5c5748fa32"
    "en-US"
  end
  language "fr" do
    sha256 "870f70645b23f8580c15bb0d8955624613ecdcbd62bb8a4848716d897f61d88f"
    "fr"
  end
  language "gl" do
    sha256 "f874d31d6cbff11b37555f608aaa572c877e85b2ae1e2994af767e4b54942b85"
    "gl"
  end
  language "it" do
    sha256 "7abeb6a406d2a041644ef1c945143552f904552fcdce5a7f6ba41b6189a92804"
    "it"
  end
  language "ja" do
    sha256 "9fec05996ed9a44b277b1831fbf270dbd0c4539704989e3a7f7b748515b3ac85"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0690b2b8edd677821aa3516233bd05b97d1e9e9bb0aa45101ed298ff25bd46b5"
    "nl"
  end
  language "pl" do
    sha256 "5ed9a81796fd6b4da0aa13936f3bbeff0efc2952c95f0c39e96f0dbeb23876bb"
    "pl"
  end
  language "pt" do
    sha256 "085078cdb22029d31edd0a08aff69e8075f266c227730753d5c0afbc37608ab8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "621490c672c5651c3d8632653c30d93dbd16a1464632d60e829d639547377daf"
    "pt-BR"
  end
  language "ru" do
    sha256 "ba93b7f31cb45bb8687c0485aa8e4728f35335507aa00d804777a68988805828"
    "ru"
  end
  language "uk" do
    sha256 "546c984a2f775f1f97891e15a93f633f399287b7764ffaa77fab183dc3766dc3"
    "uk"
  end
  language "zh-TW" do
    sha256 "3ccaf964e4370958c94e0ca58316655dedf4169dea372ee89d8137aa087f5f62"
    "zh-TW"
  end
  language "zh" do
    sha256 "3c6a60f5c6655433e3fe7f2eec1a0cfd5af9940333c089f543ec3a75fad9fe3b"
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
