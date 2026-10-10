cask "thunderbird@daily" do
  version "160.0a1,2026-10-10-10-14-17"

  language "cs" do
    sha256 "e000945a3e39b81efda8216a44cdeca9663fc7f0d810c7cec8167275e549b6dd"
    "cs"
  end
  language "de" do
    sha256 "9d25790b4819fd6ea4253063ea7a7c2e6521d3f21253a730a74f63f3f0ea8694"
    "de"
  end
  language "en-GB" do
    sha256 "0d52021f9c65afd269dc0a99738bbd62a10f02936ac284cc2135f27ed7161965"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dccd68bf2c54302ecd4bf0593aaff3433f33d07d96a3649bc2a1f51a57833ce0"
    "en-US"
  end
  language "fr" do
    sha256 "b68631a58be456e138cc8fb105a2007c311c5005a1791c324bf9f6d244e9e9ea"
    "fr"
  end
  language "gl" do
    sha256 "443c0171fb24fb97728b13e8b5524f660047d94bfafd0e7f2d8391e00036d5d5"
    "gl"
  end
  language "it" do
    sha256 "57f170b3ee2559a4ade07e32c93d9141c47bac3b4cd418847d642015d35e17a5"
    "it"
  end
  language "ja" do
    sha256 "157d794fd1d4af48f7bc95d39475054564d2e3046aa24e2ffd58be3d27a1fa8f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "32f8a242a708f44e7d51e62736eca2bd64872725b01eba642b390a499ff96cf6"
    "nl"
  end
  language "pl" do
    sha256 "565edc04375a8ca7bb834fed5cd64841938bb29efd0bf43ce8910ef0b2ecab1e"
    "pl"
  end
  language "pt" do
    sha256 "6c92a122170d6f4bbdc222902a28d2c5ea4c1bf44908c13a74145449bcfb7c06"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f03e10248f56b74c5e5f7077aa5edbcfe01ddfa12cbc35215ae61cb483581aab"
    "pt-BR"
  end
  language "ru" do
    sha256 "d7c9b8600238255bf17da9f8c0e24beb37befd9f0312934b3e55be81c66149d5"
    "ru"
  end
  language "uk" do
    sha256 "f26fe4df2f3109425fafeb70e37a2123c3232841ab81d0e3c7f8ec37b56fef64"
    "uk"
  end
  language "zh-TW" do
    sha256 "44fa46e3aa9ab8958c5c71f60c76bd0b6e8373d4bda55b99fa0c122b987f8687"
    "zh-TW"
  end
  language "zh" do
    sha256 "82a499892985ae09db166b29effd968ed176bc88d0a81b09dea77eabb4c55083"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
