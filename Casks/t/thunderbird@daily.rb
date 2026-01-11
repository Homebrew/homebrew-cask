cask "thunderbird@daily" do
  version "148.0a1,2026-01-11-09-47-23"

  language "cs" do
    sha256 "acb2d7eaddffe3f120b031977aef6b3c900ece32118f1f4eec8281aafbf49ee3"
    "cs"
  end
  language "de" do
    sha256 "d43ae37ffb234d332048b1d6a5d36dc9b7494c7bec4af3d9baeea7dc26f1aede"
    "de"
  end
  language "en-GB" do
    sha256 "4524d567da719bdc0a110d729c386cc576f5ca792f52f0d640f3c496a67d3982"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3318000468fd09b0ce9264246a487d16028fbcad8e585f19d0682f4f6317550f"
    "en-US"
  end
  language "fr" do
    sha256 "fed160223cdade53713087404ee4ef7c4a763ce3c8402a81a5479d3bf2768d6c"
    "fr"
  end
  language "gl" do
    sha256 "7995a3128d2a650d67dde83874e993c17b9525a8d8ecfb007955c5f3ed6a7558"
    "gl"
  end
  language "it" do
    sha256 "db0043195dc425cc9ba03308424dc03926d5236d4c19b4a9b5513c255f3d5304"
    "it"
  end
  language "ja" do
    sha256 "afa1b307e24eaffb34816b30f1ba09bdc499205bc1b71eeb298a6d23bf6bef39"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "81505f2d47206418e9dfb500a342be6dbac80430cec341633afe3d2f0d3c67e7"
    "nl"
  end
  language "pl" do
    sha256 "ca7fc8c5835d0470e7ca8e99e7297d562e615829752ec8f68bf1acfac610abb5"
    "pl"
  end
  language "pt" do
    sha256 "1a906eaebaf2e4a1d45a7d9bda5a02032550fbfabd651ee2fe5b2c314edb231f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "19c5384bb91f1668a02f742b373b13585cbb0d5c703eb4bc6821f09c9800ab44"
    "pt-BR"
  end
  language "ru" do
    sha256 "561b8d9575fdfbd36d43e583699b9fc4938744617f4e9c945034a66cc3327cb7"
    "ru"
  end
  language "uk" do
    sha256 "362daee7ff583f831893858113e7329f30a2cb0d0391da12cb15271f6fca723a"
    "uk"
  end
  language "zh-TW" do
    sha256 "c13c9787dae1aa32c53a0a6aef94121d2816f02ce0702e8e0ba298be06e1a762"
    "zh-TW"
  end
  language "zh" do
    sha256 "3a1b8265b0698a2d7bb5dbac06645b2b5e456f0b79bb04e7b7e7e3d191533c58"
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
