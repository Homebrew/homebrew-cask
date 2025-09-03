cask "thunderbird@daily" do
  version "144.0a1,2025-09-03-10-04-03"

  language "cs" do
    sha256 "0d9c83d0e4149f4744795026f85f2b1507475a8a2ae3e36510bf87ee51404ea1"
    "cs"
  end
  language "de" do
    sha256 "c33beb5e1e935709924c31761c2d00c089e6f5179a22c1db826207b9e9797206"
    "de"
  end
  language "en-GB" do
    sha256 "7598d2db385b9eccb394bc012e9d9a992a4e9664d1d4e99201b6fcb00ec3fdd2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d90dc3b8d8b4b79dc58e1a705999311b9dd1b29607f09828c3b68ca735eb95d6"
    "en-US"
  end
  language "fr" do
    sha256 "312deba856f7a2697876e2f94636c7ac3218e14d2809edfe05f72631cc30a77f"
    "fr"
  end
  language "gl" do
    sha256 "81c03b9ea6a8452c412fb752746c42c2e3fe8507927f150be2e7066ed9449f4f"
    "gl"
  end
  language "it" do
    sha256 "589958cd6ca5450bde1826abec71c24de567f4166438823b5e9e2f13ba414645"
    "it"
  end
  language "ja" do
    sha256 "62389d48ba8f327746d712ede3f8228de44f5bfdb6d2a801ab404ad5fd95f322"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b05ecb6e2254b7ee07a4c2b601b76d3189e1d4d153b619bff648e866d88e7259"
    "nl"
  end
  language "pl" do
    sha256 "4614420a3800f8950389fab33ddd70a93919f9be2dc1fea9bf2a748d4f372332"
    "pl"
  end
  language "pt" do
    sha256 "6cc7cf3fb3c78dffce6d8a3ec0c2310003601c0bc668e4c53b8a604e5bb5f0c2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "068217e523f72625d131c719f0c919261296c4912a1a135190f6210c00fbb1b3"
    "pt-BR"
  end
  language "ru" do
    sha256 "2914502b406a16028a0c4f7a13031aa88960fa3396196f017fb3f657970f532d"
    "ru"
  end
  language "uk" do
    sha256 "d0b0da78ab54be9f82b87a9f039f8865c1c32479307b3b8b1a31f6785fbe0f9f"
    "uk"
  end
  language "zh-TW" do
    sha256 "9a4efab87962e2069c4599d4c7a9779c373098381835dff42f49a45e88ea5618"
    "zh-TW"
  end
  language "zh" do
    sha256 "f4f31a722a92f2a601a5dd594d3a290a90099e44b3feeeef7897aa9cee4a134a"
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
