cask "thunderbird@daily" do
  version "149.0a1,2026-02-17-07-35-21"

  language "cs" do
    sha256 "d556a9675635cd5ce1a7f147dc8b8dcb032687b75f72be17a825cb165806a52f"
    "cs"
  end
  language "de" do
    sha256 "08f32e6c51af4e3ecb35b25ea01e13f0474dbf3b6eec4db534569d796020bca6"
    "de"
  end
  language "en-GB" do
    sha256 "798339a04387dd70ab81d0c45ea5a3820ca884d0eab423f6c921a03603ac4f2e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b6c6d3d53ac6dcd95cd49b7c1fbb70a8fff1e2d63b190788af1152bc45a052cb"
    "en-US"
  end
  language "fr" do
    sha256 "cb6accbf773dfab625323ea923a6459dbe23fcd08a3b01c8b0387ba884324f36"
    "fr"
  end
  language "gl" do
    sha256 "feedb8cf3d555252cbaada6160b8f4f19c67c5d553ae8fa38d70d64316d8632f"
    "gl"
  end
  language "it" do
    sha256 "00f4f3818a50d5632ba55495532e54c5107e5878c5c9dbf79283a8757cbf91c8"
    "it"
  end
  language "ja" do
    sha256 "68e15193b92781d472c138e556cdde74ffa81bc066d244e293830d14206d55ef"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f3a63a6e92d2525e6647cfa502036c61dce4d5f0965cdb4fd3a470987f0ce519"
    "nl"
  end
  language "pl" do
    sha256 "5483d8b437bff50f2d70bb2b00e557c3048407497a0f8b9775c79bd587ff9265"
    "pl"
  end
  language "pt" do
    sha256 "ee403d4b095e5ff2f361e69cfb47ba52097bf670b39e2b50a5ce8a4c4e618b17"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4e5220a17b50586a02424e88d67c7661e3e525575863d73564aa7cdccdb5b5a5"
    "pt-BR"
  end
  language "ru" do
    sha256 "3361a8516a7dd264b834547e6cd5c2656c7b0d62980972c4fcd10b90517f7c06"
    "ru"
  end
  language "uk" do
    sha256 "9c828c1fdb9700ef6d741fecd030e96c897ff7074ce9644a4c187760a1546a0d"
    "uk"
  end
  language "zh-TW" do
    sha256 "5c0b0b2fc63e0eda62963bf59e57da06b531a8482ec530f7fd70b4d247e70ac1"
    "zh-TW"
  end
  language "zh" do
    sha256 "c60c3ed71751e7061bad59c2124d76fbb21a61b06f6391a4dfeb23a52e79a3d0"
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
