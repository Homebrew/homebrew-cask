cask "thunderbird@daily" do
  version "152.0a1,2026-05-08-13-42-32"

  language "cs" do
    sha256 "f4dac51952c22c941096435abfc8a2de2d7724850d11d682200935dd088e29be"
    "cs"
  end
  language "de" do
    sha256 "a114de4cce7f86c487630d88f555428b31ee8d73579e3b4a1f2b41b7e0c8c0e4"
    "de"
  end
  language "en-GB" do
    sha256 "964fb4355b119b95c23e9dade0b83641861cd8c3fb558c4132bd43b94a978564"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ff64d297eb724c0e9299d32c165dc4b428711c6e2645185267f5d82a48ed009d"
    "en-US"
  end
  language "fr" do
    sha256 "0a98b7408bcd0346e03c60791645be2c80063a0600d0eecb0b726b4d18e5254d"
    "fr"
  end
  language "gl" do
    sha256 "dbf8fe61e6e8efe69910562ee77620555de67c03b3933a2617f9696f80bf6e2e"
    "gl"
  end
  language "it" do
    sha256 "9ebd127dbc54aebc8846932d893c478da72a6da4d373e4b917f43fcb71610cb9"
    "it"
  end
  language "ja" do
    sha256 "ac0b1995b9c2b9dc4a90204c81d66414a786869e0282f0411b2677c4e532742f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6e923474142d82ac0db137d2d79fbda1924652554e3950bab60229c5e797319f"
    "nl"
  end
  language "pl" do
    sha256 "ab97716c05c73357293c81558dbf199f80ff0d186d9a6be3d081a7a0314cabd3"
    "pl"
  end
  language "pt" do
    sha256 "667dce595190a310b42bc0b542acb3476a38779d13424efce417043acd0b29dd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fc86be0f60e920b2c2f13304e74d006a6cd1750383be014327be6c8ba4a1277a"
    "pt-BR"
  end
  language "ru" do
    sha256 "2ed0a5d6dfa9f39b33c42c574447c44dd4fb0f97abc9e4ee2b3d927a64abde1b"
    "ru"
  end
  language "uk" do
    sha256 "e46349c297499a4d734c8cea34e8f6cce0a14a37009fe645dc92651b11f0ed4d"
    "uk"
  end
  language "zh-TW" do
    sha256 "490923de5cbd534a87476634a48b054b0fb22cff61d5296470c0d6c72126f2f6"
    "zh-TW"
  end
  language "zh" do
    sha256 "0622d41925f4a77a341f30dd33576b8d27f1847db014da4dcb8b23b935394fb2"
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
