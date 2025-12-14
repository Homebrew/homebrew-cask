cask "thunderbird@daily" do
  version "148.0a1,2025-12-14-10-40-08"

  language "cs" do
    sha256 "a439c173b34f30ed8ccd988d22a11269c499b0d8b9dc768fbd5584b81afd4574"
    "cs"
  end
  language "de" do
    sha256 "84cb6b366fe9069e3d98f2ea918beb26de97dddc062f4eca0e7fac57bafc8dd3"
    "de"
  end
  language "en-GB" do
    sha256 "60bbac02f534d5db48b54019793f54b9f4a42fcada7d8f543a193266d7df30e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1c65220886d7d3cf742f6f7fcb9f8034767868b13e4a37e0d1fc2e410f3b878c"
    "en-US"
  end
  language "fr" do
    sha256 "18e845822ef8fb1328c40a4f7a3359c5283a60e2c72301f365fa728942281dd7"
    "fr"
  end
  language "gl" do
    sha256 "0abefde6085898b42b087061b619a64b4fcd6e631b54c52af887bb690c018cb1"
    "gl"
  end
  language "it" do
    sha256 "857a1bb51d2b27592b8c7cd54a0e05f3d431c477b2411cda8cebd94749d2306b"
    "it"
  end
  language "ja" do
    sha256 "ca03d758fa6674fb3cfbc51ee9c0affd0154acb0d7528708af82f79e14c8f99d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "eb4c63bd718bbcd2cd4b9b51307490b6a4162ba2070c7e67c922dfac4697d8df"
    "nl"
  end
  language "pl" do
    sha256 "c7f7bf5d87b84375454186e1d2cb14c5da4487631ad858db5554a18c6a385a73"
    "pl"
  end
  language "pt" do
    sha256 "e680dac9492239c9e08cf488c791b1e7be66552483d10c37669d1913f88dcb4d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e84590d261770242960000aaa3a26ab845fb56ca66d8be3658ff5641b23cf8a1"
    "pt-BR"
  end
  language "ru" do
    sha256 "348b1d5edccd883c2cb40939fcc5def5a79d897c4d1f87cc0aad86eaf428aa8f"
    "ru"
  end
  language "uk" do
    sha256 "53ec9f12e560482225c5b55e3c5dbc61a87f819cad834d046cf0237f8baaeb79"
    "uk"
  end
  language "zh-TW" do
    sha256 "15dd38f98b4f5a50364666e9b708e756998fe16de45b0d52a41eb24d6ece2828"
    "zh-TW"
  end
  language "zh" do
    sha256 "27e3f8fc877eaedf9b47a666c6afb2aa8c3e21e5ca3614ad29c69f679cb9c6b9"
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
