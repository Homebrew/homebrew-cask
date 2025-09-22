cask "thunderbird@daily" do
  version "145.0a1,2025-09-22-09-54-29"

  language "cs" do
    sha256 "a2210305df6adb619a2015f1dbca5a79981aaeb1d2b8e3104c3bdd889e705ca8"
    "cs"
  end
  language "de" do
    sha256 "c964625a2512a3277b34abdba1d79cae96fca58d305f09e3ebbc65db3daee5e6"
    "de"
  end
  language "en-GB" do
    sha256 "f912d8a5d98ad8a92784dff4197cfb25da036fee9552310d070bd774fb67f880"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cb0e017b64c7bc8ebb4be1cdbeeb9002c9c0e6f49db15f4976b371a11414702a"
    "en-US"
  end
  language "fr" do
    sha256 "27e6a514f9955579608b32744ee88785ffcb4939e5d2df36770463a2a8c63c91"
    "fr"
  end
  language "gl" do
    sha256 "daccfeebde03b9bdc46dffc7c15269d6f1f27963e7df0d59469a3ef74cee6ae6"
    "gl"
  end
  language "it" do
    sha256 "b523b8f3bdab123186f0b676b710b59d7ca6415c9fb015953b73cd9db1827805"
    "it"
  end
  language "ja" do
    sha256 "1785ae4f8ca16d3bf9331a8995a14c66989b70ff628e341ebf348ec79e209372"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "50f963aae7e1d86e817ad3e15eaa8b36817e117530fe0978fb4b50bae0ee970a"
    "nl"
  end
  language "pl" do
    sha256 "725949dc1bba17e44649449df8ac52b5a4590ad29b6f2eda359c419cb9bc85ac"
    "pl"
  end
  language "pt" do
    sha256 "694d7f018dfe62770bd1c7f5416c67da64e20258a5a2513b7ad828c7d3fdb81c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "090a8dcf1f1f2bceb80cffa74e993967fbdda2e60a82bcf7f205c7e9e4152633"
    "pt-BR"
  end
  language "ru" do
    sha256 "6370d766171e0e0368fe4b97adc86dfea6ab0c239e4a8af85386ac80e221a49d"
    "ru"
  end
  language "uk" do
    sha256 "647fd332c0020884804a7fae2983b52f78450c1f649bc0c00ba8b289c54a4744"
    "uk"
  end
  language "zh-TW" do
    sha256 "25169d8f29fee8871d70098a8bda1840297a060e1b22f4cd51ab6b4e19de2114"
    "zh-TW"
  end
  language "zh" do
    sha256 "cd5df5dd64a3d18c0e81560c97cad1880f82d995b553b0b7f51e283800c95e32"
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
