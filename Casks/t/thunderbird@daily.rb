cask "thunderbird@daily" do
  version "147.0a1,2025-12-02-10-18-06"

  language "cs" do
    sha256 "4f318c0156a4afceb771c6cb9c294a3f9c4bc2d60ea3376da1e2342788030715"
    "cs"
  end
  language "de" do
    sha256 "812282d2abba16bcc85b4c8080d8c7925302534ba572cbf7b12c4b24b78dbbfe"
    "de"
  end
  language "en-GB" do
    sha256 "96467f0d540c26edf95d526a06adb4ef36de6ef33be5eac2d4359a3cca84d523"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9efcbab2a068976577372042e213e16a6986ec6cb06022757da5521ed85695ee"
    "en-US"
  end
  language "fr" do
    sha256 "87e11f8ca2ee78359f5d4ca01feb3969bfbd76e763dd612ecca32a56a4233c18"
    "fr"
  end
  language "gl" do
    sha256 "58f4cd07046a339cbea690a6853b2725f3250d09928843c331dff51ef690f246"
    "gl"
  end
  language "it" do
    sha256 "ac17f8888059b973bba4d2a2ee33d8bc4956981a8c5ee0f4cfc29f3fb02413e2"
    "it"
  end
  language "ja" do
    sha256 "6a6db86a1f1f3f739c8ea439d30160b6798dd42af960ccf55f3acb5de1204090"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f388d20ab70b9ee8889720a5eee33bcb28f8a8bc68e0e2908b47df9d0d560e28"
    "nl"
  end
  language "pl" do
    sha256 "c8013f4609143285d393a17f68acb1bcc1f32aac5051e18bfb2017810cfe73b1"
    "pl"
  end
  language "pt" do
    sha256 "19d16daeb8c71a7b85fc7a6d35f1fb4a9d3c35e166c9389413c42e1a6315c026"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5da74a07524de0afc5211f3040cde4ff786a876c870d902ed47f7aee94b79e84"
    "pt-BR"
  end
  language "ru" do
    sha256 "fa50de7d9de1e5ccd51942332c8f8373925d194d133287ee57d0be354faf7136"
    "ru"
  end
  language "uk" do
    sha256 "27bd1f90f899ebd74fdc78b45f1df1e5014c96c805ca30a7fdc4c501544223d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "19d2eef32efab6647aec7f20e04ac769bf5880d6cdb05a5076b4bc5d64846851"
    "zh-TW"
  end
  language "zh" do
    sha256 "d75164406ef34725a4ee156ea7fb37a633d13988e0082e2d752c82e249135ab9"
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
