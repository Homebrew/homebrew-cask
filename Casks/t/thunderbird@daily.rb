cask "thunderbird@daily" do
  version "157.0a1,2026-09-03-10-24-37"

  language "cs" do
    sha256 "971e73a714e47d65f6febcf352a08f484228291155783a2c4574fb0bf2a17525"
    "cs"
  end
  language "de" do
    sha256 "9c62a264946f7fe5428f03ee1a14c88c4993a467a20c96c262796374cb3a44a2"
    "de"
  end
  language "en-GB" do
    sha256 "f3cc07d2d9cb6a616fa03ba5445e2d7ed73913835176c639cd8a599533b53582"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a33b250365f4b116c0e8cdfab544811b26fa40e9e12f8f8d1750ede09cc3d4d9"
    "en-US"
  end
  language "fr" do
    sha256 "67fc807af029039b651ad525d399a0959b0bcc3683fe2ae27e7b15b4abb263a2"
    "fr"
  end
  language "gl" do
    sha256 "b38f7bf74eb1945271f38f0e9f15aae5bf5d408d0ddc6813891534732de62c3c"
    "gl"
  end
  language "it" do
    sha256 "3aecbc6816c0bb671b814cac87db33fc7dd6258f90529cbcc4dfee3e4b5ec6bf"
    "it"
  end
  language "ja" do
    sha256 "efcc1c61638ccc642a69165f02b431b97269a71312948f740435fe4daf2c3846"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4dd9ba96c6fc063fa1de1eab00b2154f54aa935ed7c1a72cc4b6ce525bbc0894"
    "nl"
  end
  language "pl" do
    sha256 "ebfc7199b0ed847ac3476e3a4aa470b2be1f68f069585e3efdad302b11cc863d"
    "pl"
  end
  language "pt" do
    sha256 "de657fe066cd636794ed6d51d7e26a4d564a13b50f5467ab2582e43d248eb3b3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "edbca787b5ab9f3e3f36877e6493b29e9f34081babb5c3c7e79cfe8ffcab3839"
    "pt-BR"
  end
  language "ru" do
    sha256 "7819678aca00595a73987ab0cba89f2e3fe0eb1bcc97ace4f8e503e9a509937e"
    "ru"
  end
  language "uk" do
    sha256 "441bd674652c870f04fd9a924f7c4c6d8c4772eda6a771203ed19872a99f6260"
    "uk"
  end
  language "zh-TW" do
    sha256 "c429aa8f42f813d93961dfeeabb2831a53c97da2ba876c29dcf968b41f4c9187"
    "zh-TW"
  end
  language "zh" do
    sha256 "520ea5f55eff5dfbc842c2d898ec4d05f9adb9fd1908312b3dc67d8554982600"
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
