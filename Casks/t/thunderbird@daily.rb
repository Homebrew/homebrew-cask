cask "thunderbird@daily" do
  version "148.0a1,2026-01-02-10-46-31"

  language "cs" do
    sha256 "38ffcff8069ef0cc1085ed4a3e20d4b8570c8e18d40456059f4e8a32e0d10399"
    "cs"
  end
  language "de" do
    sha256 "fe1e9376f538c3ea78f7253bfc34bbe543101b4e32da2878c6aba2497d1b85b1"
    "de"
  end
  language "en-GB" do
    sha256 "617ba7141870dfdb63b7c4a0b371aefaa63679a05b71e3c13691c47a197ce379"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f76f1d6cbc3691981317250ee1d8bd57e48eef71de41bcda941dda2414ce0052"
    "en-US"
  end
  language "fr" do
    sha256 "4da3b9b96f6998fde20accb09d62ff5c19d661c466065530b647314b23175ce8"
    "fr"
  end
  language "gl" do
    sha256 "826118d13fcc9f30a4cab2c0dd4b21493260cb7c5d9c06845f6a6aab97a03228"
    "gl"
  end
  language "it" do
    sha256 "c4dd21c4980ff587f662b9789f912448a95aeb6fb59edb0930d596bfd6f1de02"
    "it"
  end
  language "ja" do
    sha256 "763b3c19f8ac6c1a966fe49c944aeea08b8534731c0e17c41565e16d5c331a91"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9f151b7001c51b4e64d179ad4fb18915038799cf57434792fcd67b11fcba2904"
    "nl"
  end
  language "pl" do
    sha256 "8f945963bd15527821af190480e09c8ca1e776006e20f314dcee874d16bc420d"
    "pl"
  end
  language "pt" do
    sha256 "340c6b431c5e6420f60fc4a6ca6fd2711d1afd709b0ae7182b922cbc08045919"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e4c971f34793ede35e6caed1d41745a345f45fec16beb9899c2df2a42261efb8"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d1f99bff489b6289cbf0e71a4517b56e542249c40c572ff8efe204f565e5694"
    "ru"
  end
  language "uk" do
    sha256 "1e0cc93032f2f0c1cc5b3cb7480c72ba078146d8cf09fef92b0b608defbad4b0"
    "uk"
  end
  language "zh-TW" do
    sha256 "4c26cee84ed44ea998b7adc42c6acd333155a1c13267f6e9d8e7a2c326268b9f"
    "zh-TW"
  end
  language "zh" do
    sha256 "dcb643e30c7ac38d7c46bb0a53927168badbd5a780a75e71f99b1568278ce6a8"
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
