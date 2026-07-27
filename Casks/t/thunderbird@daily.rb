cask "thunderbird@daily" do
  version "155.0a1,2026-07-27-10-29-33"

  language "cs" do
    sha256 "165fa5289e2acaa871294d93b751c39a6e3e6575c97ef294d42b2b64356f7b75"
    "cs"
  end
  language "de" do
    sha256 "a10ea970972090e18ff9786e5f9a4fdcf130878bde6963cc47f55dda76f20d4e"
    "de"
  end
  language "en-GB" do
    sha256 "3594c61bf5dd1ac4bfc039f07140c6055f2e45381650730a145bd2d1742207eb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8738d1aa958871ea95852a44470358fda241f027d1ff09bd4e2b8523e086bb52"
    "en-US"
  end
  language "fr" do
    sha256 "19d3c404674136856e00f900a6673f2959ef7c958f0668600538d4f06a4688ed"
    "fr"
  end
  language "gl" do
    sha256 "5f34322c8e1f1ead6f3c2c362cd24df7c251a0a9d75fcc5af6a5d8f4e4bc3c00"
    "gl"
  end
  language "it" do
    sha256 "243462809013035979683dfdd544b82cd5df10cdc7566beec149c0aa2d6a7da3"
    "it"
  end
  language "ja" do
    sha256 "e103a8cc74e5dbf360e76e6ce3716dcd1fc468de3856d187c9b38bd45a99da81"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "61c8cf4876380dbb56f68fc48888223e62ce1ed8e003307f91c93b3706b64718"
    "nl"
  end
  language "pl" do
    sha256 "6ebe17d084f4f9f066837a5ebed50c1f40dea856dc13af39af704f6f5ec958a7"
    "pl"
  end
  language "pt" do
    sha256 "3c0d9e3bb5603a80c0319b7f19ad4b7d52850c0710596d510a6fa35d3c74afcb"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "383a204789b367980c53d08b2b2d0b90ea2c6d6eb835c19a7191636f09e9e3a9"
    "pt-BR"
  end
  language "ru" do
    sha256 "7725d3443990fc4bdfe7be989b6f77ed29a1b537c688297299012c11605a2b55"
    "ru"
  end
  language "uk" do
    sha256 "ce6c1ef2faf85f6f617a810d76dc22b969e6bc2596056fb36a0795234c06f4cf"
    "uk"
  end
  language "zh-TW" do
    sha256 "f28f7f3c9bf16c3fa46da76510b2aeab99483f32b3b8afbc3e04c6b1c912070f"
    "zh-TW"
  end
  language "zh" do
    sha256 "2bf4288b665916137589e4bf77c68d774ec6f20cf4ec5f042476e9b19764283c"
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
