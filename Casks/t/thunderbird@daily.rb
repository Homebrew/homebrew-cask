cask "thunderbird@daily" do
  version "144.0a1,2025-09-05-10-02-06"

  language "cs" do
    sha256 "7fb8f3334232caf71134c77e00d72d174f59d66f4ec8232a8cd7ff8c0087320c"
    "cs"
  end
  language "de" do
    sha256 "8b5fbdd23e3e4e760099d68933dd854413354ff04bd3979cd4aeb7839ad6b5ad"
    "de"
  end
  language "en-GB" do
    sha256 "3bd70e0f45522ed0bf6987859d43450e87ae792ab8c1774034d23aef22d8536d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1fb123f2b9ad42c5f14c4c9fdc9db897299601502e814bea392ba6fc1081b5de"
    "en-US"
  end
  language "fr" do
    sha256 "77aa8633ac9f2711e28cf6faf170e26666f733105b44e332642804d179fcf0e4"
    "fr"
  end
  language "gl" do
    sha256 "ecb7fcfffbbf3af275051e83c1b9341f3a49a49cd5ada6aa9730d63ba98cf94d"
    "gl"
  end
  language "it" do
    sha256 "98d7c605702157a5632a71e2144576e209f6dd9ed436ab4891d5935a2ea14e91"
    "it"
  end
  language "ja" do
    sha256 "4e2cc5379ba4ebc6515bb402e5f14a3a1ca73e4353d9221c016f4b671f910eae"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4b8b30cace2819cd53c39a16b1fe996906c9d54e67543e53b4ff45c0af997de8"
    "nl"
  end
  language "pl" do
    sha256 "ad5edb06e75ec207a4aa6e24575d227ad63f4f36ec2627d1543f96e0fe91a159"
    "pl"
  end
  language "pt" do
    sha256 "b697439cf97977fdd8ed4d5006f29b166de563e1f570e6a680a81fb38833bd55"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fa458e6b94f51b9d38a84bfb52d767056621e2424c47c954e0f872bbeaed8967"
    "pt-BR"
  end
  language "ru" do
    sha256 "ee29e9b6a82369522ede906f14dba199e6db13391f3f4b585cc60a7dafbcb421"
    "ru"
  end
  language "uk" do
    sha256 "2d4ee4a88aec2b9f4a1f4d5d4bd17d920a671d39cfb32674bb3af06f1f6b9fc1"
    "uk"
  end
  language "zh-TW" do
    sha256 "b7d27ff18b9a14aa42f838feacb94c892bcd03baca657561b242d6b5dfb17108"
    "zh-TW"
  end
  language "zh" do
    sha256 "77062a026c4b213372c7355d39b5ae54efe27b65d50f76cce687cae2bfcb677c"
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
