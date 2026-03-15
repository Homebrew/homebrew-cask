cask "thunderbird@daily" do
  version "150.0a1,2026-03-15-10-48-10"

  language "cs" do
    sha256 "ed43f16ad1897b5034b5e67c7ec8d71ab9eb0e0e0635ace54b4276cb86d2f751"
    "cs"
  end
  language "de" do
    sha256 "0d368ef7eb0ee988dcffa122271edf44db885bcf337fe125e7f43993b2f3a218"
    "de"
  end
  language "en-GB" do
    sha256 "cc602d65f2864ad8bc6d8a6ddc00b3cc2a2a4c3006ab379fba05ff8b124a18fc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7a7c7490923ec18a5569d2f41aaaa253f5f640acb996e4e81c7dc8f1e59d2dac"
    "en-US"
  end
  language "fr" do
    sha256 "e823b38322a27d2b4cf86a23c5ba2ee1a78585a5d06840a9e777f9912d6f2e5c"
    "fr"
  end
  language "gl" do
    sha256 "b3506c42a028653dcea2801b8e164554605afc490f65c644fd347bc4ffd1576c"
    "gl"
  end
  language "it" do
    sha256 "1b809e36e31085630df9b7f57147d20519bd5a577931037c420ec9709997d7ab"
    "it"
  end
  language "ja" do
    sha256 "1a9ee5e1859372feb090df0b2c5796c5346bded53c487dc6b5202b050becf3e0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c6995b6f3b361050182b516505dc2a665d0c2aa26e5187a1c84949e2c778eae6"
    "nl"
  end
  language "pl" do
    sha256 "0e65e6bd2a983c6b9e0cf2ab085d09f46d2174ebf1225a215f3ef43f0e6da14b"
    "pl"
  end
  language "pt" do
    sha256 "4d64a63820e3451f0955d22b28e1a148ad392ed79e0de39f6857bdfd0c460df0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "52f97069f0196f7dae8b2a7bed0f5402c3aed715b6eacbf9415cd1bd3a7f81fa"
    "pt-BR"
  end
  language "ru" do
    sha256 "c05ef8331b02acb8dd00a22fa21bd6c703ec5a5c858f7489f6c7cdf1da048a1a"
    "ru"
  end
  language "uk" do
    sha256 "cde3fd7954c162fd9dd3d03f80eef9c6fb5621555933de9170e85083452c7b82"
    "uk"
  end
  language "zh-TW" do
    sha256 "f3130a793bf00a9ac1e6ac8afc3c0aed70123209acf766808c6b9575a69c05d7"
    "zh-TW"
  end
  language "zh" do
    sha256 "83ded4f741928ebe4912053f5bf056b885c02f013791257226360e3edeed1874"
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
