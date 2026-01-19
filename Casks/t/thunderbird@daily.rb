cask "thunderbird@daily" do
  version "149.0a1,2026-01-19-09-41-59"

  language "cs" do
    sha256 "9346af2bba37964193392bcbdca3af69c067cfd389b630680e70185527d5d73a"
    "cs"
  end
  language "de" do
    sha256 "1a3bd13d7659a9c46300c25a83f880f626c915a0481ce13a18e61b3247a6f6d0"
    "de"
  end
  language "en-GB" do
    sha256 "e4d590e3de1d10ff538f6e098aa37d9168ae567975f3f82222e02861374e5c3b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "31920200563c5928516ec8cb8feaa026f88c2696f5e43c3be88cb601200282b9"
    "en-US"
  end
  language "fr" do
    sha256 "9128115c5e4272916ea2da5922be26e5df7a2d76cb7be2525f17df2f9f4ebbfc"
    "fr"
  end
  language "gl" do
    sha256 "014fcc5aa645110c447efa91e0f943b814f8274b205ba05bc68eb60f6a86d9d8"
    "gl"
  end
  language "it" do
    sha256 "096309bc8eb97594ec51374b0ab77f3a2053f2c1d9b5c42513835b9fff0ec763"
    "it"
  end
  language "ja" do
    sha256 "07b7d70917213b7effed9287e108b116d12def1db6c243c5013d44c228dde542"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e893b548011e28ff7871186bd916ff270f18315a0816dc4239020002ea236d2c"
    "nl"
  end
  language "pl" do
    sha256 "9ec725c31c812e07ba789cfad03ab906e41d78ce99c6269a933751fa1884bd20"
    "pl"
  end
  language "pt" do
    sha256 "ad0133b5d822872d671eb9c69b2038886e878ce5d3fc7e4ad78ec1cc3eef5ed9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d361ad9f4b20afefe0f80ca719dca0b3c782a1a21ba5663175236f274c8981bd"
    "pt-BR"
  end
  language "ru" do
    sha256 "4fef8e67b7f9bdd8d880b0e0254e89bcb259bf3a6dbe7193cafb53d120d22a75"
    "ru"
  end
  language "uk" do
    sha256 "72440c544b2f9d37696d722cf92d2c62ac6454e96a34cd2267768f03f408831b"
    "uk"
  end
  language "zh-TW" do
    sha256 "5cc70179cc9e1c77b8c88ddf862f91008d49313e41d6f32659a7949c9b0d971d"
    "zh-TW"
  end
  language "zh" do
    sha256 "2d8fbb8e18c2f455f6a0fd9901188b0e5407eabc13d1bb6a1d3a43938ffc9f25"
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
