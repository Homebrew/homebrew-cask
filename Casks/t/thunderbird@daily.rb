cask "thunderbird@daily" do
  version "158.0a1,2026-09-22-09-50-16"

  language "cs" do
    sha256 "c7975b20c213c6c907ff463417586dbaef42d2f232fed74b9f21fe899a6eae05"
    "cs"
  end
  language "de" do
    sha256 "504932e776e507bfb6ffe30f8d6c11ad332726f81def64aea2461fcc743c6251"
    "de"
  end
  language "en-GB" do
    sha256 "94b6cb344e6630b5aab6cd1e7ee5d6d308ef3054bc5b44199e6715fdfa3c6dec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "35583d3995bf86353fe4cab5c0af331cb162808f202d528c98f109e528b477af"
    "en-US"
  end
  language "fr" do
    sha256 "b9e516a822c9e07452f812144f10f86c0df1ae8f1382e313be4d9700de904b4e"
    "fr"
  end
  language "gl" do
    sha256 "17f34673692df97a68723da3435cd3a5bfb233e0b32e7ec99bbac4e10f895d5d"
    "gl"
  end
  language "it" do
    sha256 "420a0f4d615e3b7f1f1c5c20ae0e12bc1cff9606821bff7efcd0a8abf50fde99"
    "it"
  end
  language "ja" do
    sha256 "bd4a0e327590b027807d66a10d0c7dab0cfee909db55213368626614543efd3b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "52319c346f2353bc47abcebaf08047ecd0c1193dda02cc8be9287b340f6b87cb"
    "nl"
  end
  language "pl" do
    sha256 "21d5523bcf0627a87708d51f124ffc6aa102f29868e11755c0fdc9e822aa4308"
    "pl"
  end
  language "pt" do
    sha256 "efd43f4271b81d530f3001252d95b0fd1e474797c00341caab4852e8e42f5e98"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1137c918885b488fea3a7acb622e862cb700a793e0e92876281458f0d3ac0743"
    "pt-BR"
  end
  language "ru" do
    sha256 "fec63a2c6389f3405ffea6bae37f9772fe11c3a61752d0f83250e9c9999a5ba1"
    "ru"
  end
  language "uk" do
    sha256 "3fdb79a0a142e96f01045d21376e4f1082267afeec179d93a94e6658739fa63f"
    "uk"
  end
  language "zh-TW" do
    sha256 "b5e92c38a599482de2be366400abbf5ab8d5b8e30c83cc21fa3d2a6e486456d5"
    "zh-TW"
  end
  language "zh" do
    sha256 "5defe233eb2f57b9064d880764350be4508c5b1a3c5aac8b8ec4e0a54ed0ce16"
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
