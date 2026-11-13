cask "thunderbird@daily" do
  version "162.0a1,2026-11-13-09-40-57"

  language "cs" do
    sha256 "a2d0e82a4cd17e0e7c2c4ae021286536b99e21dc205a7dbdd6e5aac6897a60a3"
    "cs"
  end
  language "de" do
    sha256 "3b2543671a470d99798fc1aa2b7ea6036d3355a05fce5de6b27bc6bf75ee64df"
    "de"
  end
  language "en-GB" do
    sha256 "72b96813d65bafd8214d9dbbf2e04c3a0974917fc7aa16421cac369bdd0e4b90"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f9499777b7439b6f6d25913a3ec199e84ec37e69a1a7ddc7a631613f6b240041"
    "en-US"
  end
  language "fr" do
    sha256 "7cea7a73a6550d30bbfc52e793bf773f9541278214a09a231389e31acb5cf9b2"
    "fr"
  end
  language "gl" do
    sha256 "25650afc0c86056abc782c018728dee27bcc91ce1f226f0c65701d00c4137261"
    "gl"
  end
  language "it" do
    sha256 "bb184aab0adecc109c443143e7c4ba4e46e09ec5ae1a7a858459ba54ec6956bd"
    "it"
  end
  language "ja" do
    sha256 "4cf353654ef18cae3f6b0e2010544b77bd9c12c644f8379496ad146efbba9a5f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c84f939990b1ef1aab81781cc34250a6b07b5e0ffad19e6fa98bff0663fe2b44"
    "nl"
  end
  language "pl" do
    sha256 "43505c124580f16cc4b2e2399ed17d40fcbed7b17feea49529e91c38c7f46964"
    "pl"
  end
  language "pt" do
    sha256 "0d73a8488bf97ecfc925c1eaf0189cb688e405bb3faed546465d7f92052471b5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "aed06c86e1f35f321eb29988189990fe70c8132edcaae7f8c707025870c57410"
    "pt-BR"
  end
  language "ru" do
    sha256 "ecb78f74afcde8cec9078105402c9f70d9c62d19b23fa8baff99190110d4d796"
    "ru"
  end
  language "uk" do
    sha256 "62f93620c3348fd8e216e103882a8857ea932849e100c916156bb610996688b4"
    "uk"
  end
  language "zh-TW" do
    sha256 "f82d1b730a6a09eeb495128d5531aee3d1c30309ff492a4af7b5ce7c8e826b5c"
    "zh-TW"
  end
  language "zh" do
    sha256 "f6a972788bab3222603fa47dd6919cc3a0aad012d2a9dc110702912804b528fe"
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
