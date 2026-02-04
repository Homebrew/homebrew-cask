cask "thunderbird@daily" do
  version "149.0a1,2026-02-04-09-57-10"

  language "cs" do
    sha256 "7e66b87cc1ac15559ac8db2bc5a34111ad12600d4a4ae34788c66300c4a81bb0"
    "cs"
  end
  language "de" do
    sha256 "d20c8a7d4bad2771df6c16bcdae9a72e4822d6f555e8e3328668b1c6718e008e"
    "de"
  end
  language "en-GB" do
    sha256 "e64a60606e4defb46213a7e660ba892c9b80d8ae48f8f6369d5251e36f22e354"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b1334f0006f834fb6b5c4a01aaa011a948f8f13fe61d788b78e790d2f4f6cbd5"
    "en-US"
  end
  language "fr" do
    sha256 "31b8bdf581484adb68a14846c0132f5e54ebfca76983e4ef30b420de61d28b20"
    "fr"
  end
  language "gl" do
    sha256 "1b207b716f15c0f75b9950144f4840f2fd5ace7dd3c4ed82508ba25a285433a8"
    "gl"
  end
  language "it" do
    sha256 "8abd55ff63d0472724b3fb180fbb93d53f8a8d73da8de2fd78cec78ae8dd0982"
    "it"
  end
  language "ja" do
    sha256 "7884b4d2a1d7741d7b84233ba7dece387d65cb88fb44a116c706687dac01672c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4b2ae0e30784d6d793fbca98c9f0b4e7cd44819128ae1b410f7d560f83107f38"
    "nl"
  end
  language "pl" do
    sha256 "5c838fe134f7dc3d48a2b4a61fd348d6960b5d4b2bac7f7ace097a5d975c24ef"
    "pl"
  end
  language "pt" do
    sha256 "f7713f4876d81b62b3e7365de31d012399870a911c4faaa4934f5baf433fdba9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "37bf1c3ba8f3ae3f53565259716e439e2d16ab6563f8c13617ab5edba4d0a7cf"
    "pt-BR"
  end
  language "ru" do
    sha256 "10b964ddc7105cf6fbc3141556c1dbf5ca113d9af47e9535196482859669a273"
    "ru"
  end
  language "uk" do
    sha256 "19d9ce41a08c9b27a8d0bf5d8798cb99244bdd5811e55cd1ee26818ba7cd3ec5"
    "uk"
  end
  language "zh-TW" do
    sha256 "ce6aca147d3309e096ce29d80c5ee0bd3f4bb2d968ddd0f547480dd5ad2c746a"
    "zh-TW"
  end
  language "zh" do
    sha256 "6932d9eb6ac082e830a9a2ade00f277d99ef15a51823c0a986706f279f5ed4a9"
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
