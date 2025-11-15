cask "thunderbird@daily" do
  version "147.0a1,2025-11-15-06-52-55"

  language "cs" do
    sha256 "3d024ac50a56be41a173945e6371aa2619b52bf6559bbe8ad425522092e4d87d"
    "cs"
  end
  language "de" do
    sha256 "db0f71251d1acc5c0ca354523e08a6faf3635efb182323c243a8e980d7332745"
    "de"
  end
  language "en-GB" do
    sha256 "add6836779d62e4d8b04a8cc8919f6b08b6b162e062b23a3036068e02874622b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "61673d4cb89e9219709a25d57e1c75fb002dca4aae73aa4f38e2ae5e98b8a762"
    "en-US"
  end
  language "fr" do
    sha256 "4e6e78f736ebe0ceb7cb54abe5da0bfdda798c5ebbfed21c24a65aafe77b0e7c"
    "fr"
  end
  language "gl" do
    sha256 "e0e454193d52c91b19cefeccbc71f89244fe31ebdf7a330cc8f48ad30f9497ea"
    "gl"
  end
  language "it" do
    sha256 "b39c3b2b729076b0406904d2f74c6d73202e3e016b5ab3e06b126b2dea09ae23"
    "it"
  end
  language "ja" do
    sha256 "4e89bf524df1678f1aaef0f8a7b9f6460615440278f249ba128d4b8b4fad48d4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2dbff41d6b60e2ce9837921157f5043ebf9cb5eabb39e8b98507be2464f3f3c4"
    "nl"
  end
  language "pl" do
    sha256 "f27c701bc0c0934878c5ed97d8b0b06fbbac9775d7b115c088b0944072648370"
    "pl"
  end
  language "pt" do
    sha256 "f7bcffac6a9d92522a4e445ae620c0a86353038555b112075b9b0d70735424af"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "38c3387806b7c5a2adb3e8bdda2ddb0a2c0acd0e46b044847b217a282bbdcbd8"
    "pt-BR"
  end
  language "ru" do
    sha256 "899d651131e2dbdf65d2e9c6f31d1afc485831f7b85075a14aa554a57161628c"
    "ru"
  end
  language "uk" do
    sha256 "6b4d62a851597b34a7605e78752e85fae28078ec1bba67f4330c836306753314"
    "uk"
  end
  language "zh-TW" do
    sha256 "a481f2ee7f304c1045482d57432f0fd00504bd31b2a41176b32f346e6b553e63"
    "zh-TW"
  end
  language "zh" do
    sha256 "2e76f9f2fe03a42f7a0cd985f9899140a0307602d7822087bae8d648c55b6f83"
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
