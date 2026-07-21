cask "thunderbird@daily" do
  version "155.0a1,2026-07-21-10-54-36"

  language "cs" do
    sha256 "f85e5ea68c2e9325575606f2856e333cb4eadbb6d27915ec5a2e69fc65fb73c2"
    "cs"
  end
  language "de" do
    sha256 "2ae656d3731c7b5c29186ab863984148d584a36c4b68855c88ddde3fbd816ae7"
    "de"
  end
  language "en-GB" do
    sha256 "14530685e3dfe6a96a2df28c010eec387717ca6f6aafedf998cd20b884defa69"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6890fb55a58cdc93a521edb0c26c31bc18b394d7135e30336fe8cf1654a163e6"
    "en-US"
  end
  language "fr" do
    sha256 "f7faa26e0fde4027457458a2b60a7cdaccef516c9bc35341c070b3f048523953"
    "fr"
  end
  language "gl" do
    sha256 "f2cc30a5a9389eae90101db689a1c92d7632f2fc5c78b356c2f2af428b6a2830"
    "gl"
  end
  language "it" do
    sha256 "dd71eb395a285c4a61afc6b6ecd66f06d3d82639e7b055454f9a4f2de61fabb6"
    "it"
  end
  language "ja" do
    sha256 "ad3d1ec967b2f9e55c0114b9a9c15d1d2dcf124e694c37521140862514cedf8b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3d823ce07f88c0207a4869240dd8895c5952f5ed645d527394feff4afd42dde7"
    "nl"
  end
  language "pl" do
    sha256 "4e299c803e55f11cb63b930308726216dcbe0bf635e148c7d35b7db065219803"
    "pl"
  end
  language "pt" do
    sha256 "a2eabef667eb6258ec2186492114c00e008615756d6e27c221210ce4aa5fab18"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7d183db089a6b309e2b5d50151bdbbf0d58ed3924c85729537dc8a685f9127ae"
    "pt-BR"
  end
  language "ru" do
    sha256 "515feb91ee6234bcc2e70416b59ae53179dac0363972dd8b6d2a646b7c7a9468"
    "ru"
  end
  language "uk" do
    sha256 "936b1aacd88408898a65251ec54fe6f19b03b4842949ce305ebbbc9d1b6fc26f"
    "uk"
  end
  language "zh-TW" do
    sha256 "18303ae9ce493e699a9e0f77fc2da42000c4d8122e5c23af104de6d5db79812d"
    "zh-TW"
  end
  language "zh" do
    sha256 "5e91b7cc1bbc563802c95f04733438a5e285b978b24a87d19625aa4e4a9a5e48"
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
  depends_on :macos

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
