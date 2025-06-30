cask "thunderbird@daily" do
  version "142.0a1,2025-06-30-10-40-37"

  language "cs" do
    sha256 "c72f752bba02bd791fe6ba71ac3c8450b35908ca785bdeee6125e72b4caee953"
    "cs"
  end
  language "de" do
    sha256 "061776972ddaaabbb3f1db5aca3b9c2ba7f97eac239bf7a7aeb91761a6b8dd5d"
    "de"
  end
  language "en-GB" do
    sha256 "b3ea6b19469780b3465a607640a3bb04d01a417685b2cd027621eda6399d62e6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "45bdb471f6758e47e165fa4d5f4af3fd1dbed0195986614489ec72b5476a1dc0"
    "en-US"
  end
  language "fr" do
    sha256 "64a5581c6d1778d393fce6e562f902bb4dd0b42339fd7ad62ecce13b1b04b3db"
    "fr"
  end
  language "gl" do
    sha256 "bf3aac9acb89d1c0a46a3b5845606afcf288f6ee0aa41624248f278f093d5f11"
    "gl"
  end
  language "it" do
    sha256 "fa7f3b0bfc8e0f8eea4624989c48a938b789e0e2d4ced1d5dc90cab524813966"
    "it"
  end
  language "ja" do
    sha256 "52a0ce8ff6fa6bb60bb60549174422452dbe1280b1819a37f5d9abcad14a74cd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9bddf4445d77252855b946b8e8c5a0819f31bae97be913c3a4b5ad81303aeb03"
    "nl"
  end
  language "pl" do
    sha256 "c0caa05ddc996f319a879170576b6738f072475912ded4ba9e0278c2814dea24"
    "pl"
  end
  language "pt" do
    sha256 "1114d1c2856529ba68d830d8203090c2d8171912d79acae1500ec19e058f2f91"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8317e1c4fde717aeb55a7a14432590240c76e60da234a17b6eeb23f335d4d7f9"
    "pt-BR"
  end
  language "ru" do
    sha256 "b4bc8d28031dda9a9e09ac7bdbace1c38054d6d5530c2ff9dfa05038992daf84"
    "ru"
  end
  language "uk" do
    sha256 "b4166e9531bbe2c96c7ce225a43fa3a8933501343fe45468d7ab015ceff12b0f"
    "uk"
  end
  language "zh-TW" do
    sha256 "e2c35b4038fdc29a6cd144730c9b934db5fe65fb39b500fdcb56561a16558812"
    "zh-TW"
  end
  language "zh" do
    sha256 "f240ab0208f82ef3238606f2ece096b5567ef0dd15874b3a05e6864809886b38"
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
