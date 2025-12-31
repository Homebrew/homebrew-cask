cask "thunderbird@daily" do
  version "148.0a1,2025-12-31-10-33-02"

  language "cs" do
    sha256 "6d06eda6c7a6bdbc8d107fe995d590be90d674cbf4525103d7efdfec5a0d9731"
    "cs"
  end
  language "de" do
    sha256 "648aaf292470a6e37394e61e7487c40f32c4bdbdeb620b81c7cbb306d728c16d"
    "de"
  end
  language "en-GB" do
    sha256 "a89635d45b8bebde77f400f41da8506f69646304895c96349d18c01ead9ceb3a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4b8beb1ca52f06c2c1645785a2d019d1bde28b80a9e5179dacc5a69625c991ab"
    "en-US"
  end
  language "fr" do
    sha256 "0e85527dd6a7b4c14db1ec7915531e5542d0ddba1b298903dd2c5c517ef65e05"
    "fr"
  end
  language "gl" do
    sha256 "ddd965b04c67dc289aeb09e38a53702433a617238c9a8437a47cf90c5a2026ee"
    "gl"
  end
  language "it" do
    sha256 "2c91e32b137eeb77bd584ed07e8ab6117fabff9e962de60e9119d34ea1d47027"
    "it"
  end
  language "ja" do
    sha256 "8d82953c36d19f4d02686679190e3dfd0ea854aea0ffe085d124afbb5ac5db5b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fff3635f3d264f05de58f9007d22667f2025600cb3a1133101cd6afbefd86b1d"
    "nl"
  end
  language "pl" do
    sha256 "eb025e76b86306c126594f1e833e3e599045c5fddff4aab4ed10c666744a20b2"
    "pl"
  end
  language "pt" do
    sha256 "b8c1318754a941b7442e5a08020cac2316c1cfa4a091cde4a613d694d1df5c2f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1a33dd2e2ce7a4aa30c539c16eed7fcc8a15d644bfa892487f58bcb5262e2b73"
    "pt-BR"
  end
  language "ru" do
    sha256 "fd0b1182f585dc7d00f1138fe8ca10bdfe777b2a1a08dac344d7ea91cab9d2af"
    "ru"
  end
  language "uk" do
    sha256 "c9acaa4c01bbe1c9c70dd6a737292f6e939bb71c0cdec466fdf3d69fd9d855bd"
    "uk"
  end
  language "zh-TW" do
    sha256 "b7fb16120a73e090e4a2d3ca426b0367c645228fe23c972e30a1009c77c762c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "3bc55a45b66f713826d89ce16c83519d7a86c0336d0380c94e8ff816bd3b5e8f"
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
