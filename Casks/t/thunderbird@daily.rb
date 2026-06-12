cask "thunderbird@daily" do
  version "153.0a1,2026-06-12-10-57-45"

  language "cs" do
    sha256 "5611956a5bcb760689cc893f5cd12adbdcb5fba2971ee10c105b8e74dd36fbb7"
    "cs"
  end
  language "de" do
    sha256 "aae9b8a21d6fae5fe165bc1e9c23fb530b5ea54bae79278abcb0ebdd0efac25a"
    "de"
  end
  language "en-GB" do
    sha256 "1dadb8988c038dde10cde086ff5ba21ed0c232cdd366bd0cdc0917a2e9a543c6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "97fa318544f837a086f463c1469314de4cf130416bd755e5ba968184df50dcca"
    "en-US"
  end
  language "fr" do
    sha256 "dbe008dc88eccabe5517d6b01490082cf268713791c49068741530d0005c9009"
    "fr"
  end
  language "gl" do
    sha256 "4c4b69df597bd96dd56da84d807c295157bcae6cb28fd4d863548a60b99dbc1f"
    "gl"
  end
  language "it" do
    sha256 "a1f1a1662ce525f42776685deb01033d1fc44e1e2f194869b8ff1952625ae1cf"
    "it"
  end
  language "ja" do
    sha256 "b60779fa0c0e36078504ee58d9c942b07fade337ba116a4030a7443d735ee27f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "47af8c17e02f42d5a0ec67b8c57bda9f271aa7f318c07dedc57c1d4069a43c95"
    "nl"
  end
  language "pl" do
    sha256 "3296fba4ac85af4e41e42a169cbc2b34a19090f90656f1ae26aa667c1f974fc9"
    "pl"
  end
  language "pt" do
    sha256 "2bc636d9cef4eda6b4675092eeb39b1c267464d1585e3d264dcdc5c0946cdd23"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "19d8f81c0d37e71a1196ee05898e053080390f93d377ad3466ab53b6727642b2"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b0f32dfdb39c2765803d0a2d80cae4b7be02a125432af6853499f63bbfd6240"
    "ru"
  end
  language "uk" do
    sha256 "6e6ee3c319b54c01259dc6441005619040e12fc71a8f19163c7c695876a9189b"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc4961766134b3f6eb729662205481d421dcea81de531204b69c8dda727c0c70"
    "zh-TW"
  end
  language "zh" do
    sha256 "e19efea14fc41a1f64a478ee63e9dec01a2801c2b8039558341239807a118625"
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
