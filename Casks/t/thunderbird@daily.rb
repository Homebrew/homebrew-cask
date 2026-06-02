cask "thunderbird@daily" do
  version "153.0a1,2026-06-02-10-30-50"

  language "cs" do
    sha256 "dda225368abdf5428a48dbbb92e264e9553e9c8c91dc670da4cb51cb82bbb28c"
    "cs"
  end
  language "de" do
    sha256 "10447383894698f645b3009bb60ea6b6c536c52ff185b0adcc09a9c6030b1309"
    "de"
  end
  language "en-GB" do
    sha256 "4b751a3c831918fae68f12fb37c4eaf60aab9338137abeb0cd75040fef779347"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dfc4cf3b7537aac974e2921669c3d0a5911a71f699694c1a084187ca439926c5"
    "en-US"
  end
  language "fr" do
    sha256 "85ca5c1e35e669744e90fbaa584556c3301fad51666414753eeecc4cb3d0f390"
    "fr"
  end
  language "gl" do
    sha256 "1e74ed1b1fcd61f4c1bad40aa89bf16533e560a5d2d972f148d3065682e54203"
    "gl"
  end
  language "it" do
    sha256 "c453f0a7c05232b32d94f3d926f4f304304ef90b79d16aba81238c7bdfdb25e3"
    "it"
  end
  language "ja" do
    sha256 "12352e61f5ce5ce239c8bede5d127abd48ae0c4477ddf9f913711906eca37c9a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5f22a670bad9fab2db28d47117e6de96216aba6fb8c7f8792c33670fe8b5993f"
    "nl"
  end
  language "pl" do
    sha256 "00363ab2b2034e6b6ec7167e8b965d283a1c0fb9f00fc5b3e8495745267e86ed"
    "pl"
  end
  language "pt" do
    sha256 "68e941dccd50fcad1e093726195d60ac10e0ea3f3bf5e7a7b4e8cb6fd4798653"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "243d213120fc54284c4234b1214ce723a11a853a28fc5cf4e29972a9504b2f73"
    "pt-BR"
  end
  language "ru" do
    sha256 "d61a8ec3c7879390aacb7c7e8852d6167fc99d01e4280533592c17f4942bd905"
    "ru"
  end
  language "uk" do
    sha256 "04c1e29b048dc3d8d00392bd7c561e018084e41519470a775287aacf14742f1e"
    "uk"
  end
  language "zh-TW" do
    sha256 "e144013b6f9b335224b5c8c3cd2873c9622a98e5d284298a57539a92fde2650e"
    "zh-TW"
  end
  language "zh" do
    sha256 "512cecf09cf382ef8c1d33e8f1b8d56da1fca76a20f810d16afe518127ebe65e"
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
