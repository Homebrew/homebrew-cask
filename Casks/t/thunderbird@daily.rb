cask "thunderbird@daily" do
  version "151.0a1,2026-04-20-09-49-52"

  language "cs" do
    sha256 "40e2a67c07b80740830f3b9e6fd5e92d6cf54a90f3e8443567731cb28eba59d6"
    "cs"
  end
  language "de" do
    sha256 "8b9ddcf79b6893b75ce5790d26da834cf2ef02becc05670df9c4b262de2557a1"
    "de"
  end
  language "en-GB" do
    sha256 "7bcdf461f601f360cdda6b10813d07c459ae432b9cf25c0446707a881fe0d85a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "446906c2c8c94d29e8147122c44cf8bfb53a6ef5857ad4ba706cb6537c07b98b"
    "en-US"
  end
  language "fr" do
    sha256 "12153ca9662e4efa7985078611505a2d57e0d5da870466b8dcad92d33f0692c5"
    "fr"
  end
  language "gl" do
    sha256 "825694f15418e21d8052b4b15020310d71f00c39931f7282b8b32b6a745fae96"
    "gl"
  end
  language "it" do
    sha256 "33993f9f507edd9b1f59717504be8f3a357fcf0bd88013e0c6f5f9acdd158f4f"
    "it"
  end
  language "ja" do
    sha256 "9b8e510b3038ccecd60b2b95ad89c9fc49fae831d7218944f753184ebabf7157"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6d62dc5448d49800800ac5486cacad9d6db31557e4a6f158bc36900545bcb2d5"
    "nl"
  end
  language "pl" do
    sha256 "70f173265a8954e75173442a770022df2d14c7cc656ef2a61fa39c1bb2322bc0"
    "pl"
  end
  language "pt" do
    sha256 "6fbded47bf3f6a997a250eb3f3fd9a36faec3c6181e03f07b28f616400cbe25e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "58c39a17670c554d4a1eccae03f9fb0ea0ee75312d25cf5b6734a1219428d97e"
    "pt-BR"
  end
  language "ru" do
    sha256 "127c3aba3f3827151aeb981edf70c586352d3f1a28fa13740e617ef5ef7e907f"
    "ru"
  end
  language "uk" do
    sha256 "4ab0ff85af7471ad8fe7b8ebae886080c07d0b6d69e4e576e84996bd9723f5be"
    "uk"
  end
  language "zh-TW" do
    sha256 "afcb9fcc2f8c839f1bd0284aff5800b51f6ab93d0d48e570e09b8ec0a9907b6a"
    "zh-TW"
  end
  language "zh" do
    sha256 "f740eb27afff6dfbaa1b8b06bf9482eb69f3ea30dcaccdc2037a9544d0a91244"
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
