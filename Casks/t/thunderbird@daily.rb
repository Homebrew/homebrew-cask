cask "thunderbird@daily" do
  version "149.0a1,2026-02-20-09-43-39"

  language "cs" do
    sha256 "08e5de567714a947ad04496beaa57c517c2c415dd4b29f3c0cc3456ac7373929"
    "cs"
  end
  language "de" do
    sha256 "3c52d429fd0b89e77f1634c5bd14c1c55aa549adef42d848aff01fa47d28a2b6"
    "de"
  end
  language "en-GB" do
    sha256 "900c42081ea139ea1ac9370b8e3db49afb7e0fda87553bfd2636985e0689a29f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ab027b8770205e9b87492bab7a7a293cef0ab058b7e029d6b5c4441fa454067c"
    "en-US"
  end
  language "fr" do
    sha256 "6ce967881a50851a416a38d59340042e91b6e4093e339c8b2f6ad897ef568e96"
    "fr"
  end
  language "gl" do
    sha256 "903258f2be732824f08ff03d01df0c8ac86b871b8d47b219f93bf279ad37bfd5"
    "gl"
  end
  language "it" do
    sha256 "1a0a5cc4de188fe34a9a7005bbb6dd103615e9cbf9edd638284670a8c6abf82f"
    "it"
  end
  language "ja" do
    sha256 "be05fce4316fc318ea352e6f3d9d3ad0fd9ad79dc5b1da2fb0a8418eb6df1a63"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ab8bb96561dec592db40db864e45516e65a07d6e9ed121f8f7a2aea8631e788e"
    "nl"
  end
  language "pl" do
    sha256 "dea9fdcc217c16d8596f203c4b9f875eeb53ad1c996504fffb9553fdc60e3dab"
    "pl"
  end
  language "pt" do
    sha256 "7502f719d8ebf7d4005d5a32fd5e468fc43cf191f26ab36d582e79df83bc1be9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8119c404ae12856fe80eaacc3b0a29c67ae20670f621e0814f98262ae9f16457"
    "pt-BR"
  end
  language "ru" do
    sha256 "8517e41f25588059b7e41359dc1e72d5d6c59654a356e99d2cf1bfc8eedb21ad"
    "ru"
  end
  language "uk" do
    sha256 "fb87ae99beab1f2120c08395e59b8c0eeb4a88724fd03378c78b36ee0bc0f275"
    "uk"
  end
  language "zh-TW" do
    sha256 "d7784cb874ab78236e9e46735f6aa2bb14d0c5f01e361a351ebbb34071c6b1f2"
    "zh-TW"
  end
  language "zh" do
    sha256 "075e19c9bb8faaeee064a425c86255299f025b109c5dd7d48898e7340dc70402"
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
