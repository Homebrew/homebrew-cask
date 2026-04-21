cask "thunderbird@daily" do
  version "152.0a1,2026-04-21-09-20-16"

  language "cs" do
    sha256 "eb351dcae517bae8ad56e76acd2507acabe90d7650cbdffd3346897872773f6e"
    "cs"
  end
  language "de" do
    sha256 "53587388924eb2c8939d9c8cc56d7032670d740ffbc63b656071ce29a0a3c503"
    "de"
  end
  language "en-GB" do
    sha256 "8073b9ef832229d308a3d5fcb2d003c9d4495f7bc9c8f93b69280bc806a59372"
    "en-GB"
  end
  language "en", default: true do
    sha256 "16b27c668adb76174e785589aa3ef269c25b02671b71921284a112e372d62d74"
    "en-US"
  end
  language "fr" do
    sha256 "9bccfce78ac240ec4dc0b07166b889ff54cf225d6edd4e92f96abb9f3f79e828"
    "fr"
  end
  language "gl" do
    sha256 "c37002ef0cd645e9689b0e05076f723e177318a267fb7a65653305fb9a041640"
    "gl"
  end
  language "it" do
    sha256 "9109280bdf30b202b07378b5a28df5373e44bda15b3dc455e691e3749ab5554e"
    "it"
  end
  language "ja" do
    sha256 "98f587f450650448fa3549321561dfbfd570570927937d0f777c850be0a285ca"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "88d6d0869ae70c70849b5de753a17c97f6ce481459191ae93fffbaaa681c3b19"
    "nl"
  end
  language "pl" do
    sha256 "cd6d32d8947517f5f69ac8cbc42d2722a5951b379826f5bc784a1c83411a8f1d"
    "pl"
  end
  language "pt" do
    sha256 "455cf42132ac0d0238ef578c8c81a9246b3b57666867bdcf343bd14941cf2553"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3b6eb03cf3513133adcbb6fb22b2114c2f6858f10423644583109d2857f54040"
    "pt-BR"
  end
  language "ru" do
    sha256 "df470d47eba543983670523b68d00e12656fc48eadc9d11077fbfff0d9ebfe51"
    "ru"
  end
  language "uk" do
    sha256 "df1d4dd3b1f6c4e4ab409e95f865d411b9a45006a98569359d0b726fbbf1b572"
    "uk"
  end
  language "zh-TW" do
    sha256 "9b647f802856df9d3a133e095d80f061e25673984319b458aa41581072652c8b"
    "zh-TW"
  end
  language "zh" do
    sha256 "419f40561ce0ddced56c39385745ab38874dc13c874c68448716f2cf73570e9b"
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
