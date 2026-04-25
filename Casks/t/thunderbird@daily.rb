cask "thunderbird@daily" do
  version "152.0a1,2026-04-25-09-51-02"

  language "cs" do
    sha256 "82b51152942fef88a34ac72226f11c0e64cf72fe99bb1dc1687153dd2d399be4"
    "cs"
  end
  language "de" do
    sha256 "15bb8d24ed12b3a7e04c7f79b0a7be9dc782902be1c81bdada49e9e757ade9bb"
    "de"
  end
  language "en-GB" do
    sha256 "57e0ea24854fc853aa4a32b918bb8b787b54d9fbe647d5ecdf59a433c4890b32"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8332011d941181fb7da866f46425a2dfed659019b27697fe4813bdec1fb45f87"
    "en-US"
  end
  language "fr" do
    sha256 "5aff0d460ae6bc4b545f4ba95ba6336f6acfc95efd888339e14d8d43e3fdfacb"
    "fr"
  end
  language "gl" do
    sha256 "78d521a3e71b13008c612b4d53c9e40cb82f2e732599f5a23d011c7b3a7cdafa"
    "gl"
  end
  language "it" do
    sha256 "f7148b5ae678c3e7a8d17f2141afb4559f6bae89ba3130bda3bfc007a1df9d8e"
    "it"
  end
  language "ja" do
    sha256 "f8cca54fc46e7097c162c84548329e295104cbfe1da261073ccadf4f41aa4047"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2f965fede9a5f849d703f0789a887c63b91c13d60a8274e0c30e555015260dbb"
    "nl"
  end
  language "pl" do
    sha256 "4638fd2dc68df832182527993ef14d73568544580d349903fab482acbc3ed888"
    "pl"
  end
  language "pt" do
    sha256 "d64d9c4d5c1b838345b555d9e8c42644769752e19c311fe1581247fdf9bc80b4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5a3ba63115f92e06a2758ada90a682cfd6906a96f4090ed9c5d0fb001f4b97ff"
    "pt-BR"
  end
  language "ru" do
    sha256 "e38fc62412a8286c1009657a6e3478442d9925aa951dc7f23cbc0b2fac8213fa"
    "ru"
  end
  language "uk" do
    sha256 "7f9149cee3a7f44a74549caf6a61aa55bdbe7788bf5cbb979a597de0ebccaf84"
    "uk"
  end
  language "zh-TW" do
    sha256 "1cddba7e1c0ca7ba2671a8f4cd449b3aeeb46821f067dc5acdc08b4e2ceae00e"
    "zh-TW"
  end
  language "zh" do
    sha256 "36720e5d9898f0b0ddfcc86dd1dbb141e2efcfa441ee4895646f8fbe8ae337c3"
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
