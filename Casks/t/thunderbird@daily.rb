cask "thunderbird@daily" do
  version "162.0a1,2026-11-12-10-00-08"

  language "cs" do
    sha256 "f4d15e84611a5f15087cf59ad7e82902abe39248880e967b2d4b5e2ae4e52bdc"
    "cs"
  end
  language "de" do
    sha256 "c18268fd1e3b1645504db92f7cf10d2c236353292c555da81c965fe1afee740e"
    "de"
  end
  language "en-GB" do
    sha256 "c1597833b4a3b67b1f5568e23fbe7a8d58d2d2e0a59b844acea3b69e500471a6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b1a2770745638479ac6a7ff3a40d2696207c8e22c95cbfc79accf9db6269ae1c"
    "en-US"
  end
  language "fr" do
    sha256 "2e10bdcb247ce13f8ec7d21f3f684bc0aa17d62b6dd17111dd85e08fd7c07ec7"
    "fr"
  end
  language "gl" do
    sha256 "bd8390c32bfdf1481e53ec4b38cf36474da1f27c0c3c20d232fd5923784c3572"
    "gl"
  end
  language "it" do
    sha256 "60f8430a4707f729986dfe7c4f3674337b8c6bb287f9e05d03601235c3149090"
    "it"
  end
  language "ja" do
    sha256 "07a83b5d3c6f21ae2249d5ba8f641abbaebc3d6efe9db3c058d5b18e3e13e29b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "28ef5fc0d8f64366c45f24a0a5b81fee08ad1447d150182f81c7bd91254131ff"
    "nl"
  end
  language "pl" do
    sha256 "289409bd2c81e031afd5f3c952be1ae154d5b3855e8edbbbd1876cfa35ba1f51"
    "pl"
  end
  language "pt" do
    sha256 "41cec4a5b6f35255216ff05c43f200f3c92079f371aa0140974a0551451be9c8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "11dbb83c6fcefbfa44e241062d5c9a88bf9174e7ac1df61e3d0ed1c5db39e17f"
    "pt-BR"
  end
  language "ru" do
    sha256 "f2f36f5da73a6ed8f7bab09f3d847205a47fc60a206a9de6e601c6f57f938b43"
    "ru"
  end
  language "uk" do
    sha256 "4e9067135298c730165c1abee01c6f50acfa7e0a139b421b57ba7b6af861275b"
    "uk"
  end
  language "zh-TW" do
    sha256 "42f31226746431151a31228a5191e51df9bf4208e59265844292f84675449031"
    "zh-TW"
  end
  language "zh" do
    sha256 "2227c0ab19bcb6b120bfb139a1f31b8518c9d6101a71fac58b16713643e8e171"
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
