cask "thunderbird@daily" do
  version "153.0a1,2026-06-05-09-59-27"

  language "cs" do
    sha256 "939c7b8be842b55cc92959ac6dccc90196d0e9b7a21424e0c77880146f2530dd"
    "cs"
  end
  language "de" do
    sha256 "6a4763f0f1f7c46eea7a33070828328eb9b3e0fc528bc0fd14cfa78f8aaa96cf"
    "de"
  end
  language "en-GB" do
    sha256 "4efcef145078eb7da2735a1aed48fc2053731779d26d0d910209d1aa2afebb96"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3e1654b481894281db865a9723c3fbf91403b4d4871e3ab0f92e9f5e3803bf9f"
    "en-US"
  end
  language "fr" do
    sha256 "c28391f9c53b55da995da51af23e1c5705ce10b0edd233f4847c2f411856a367"
    "fr"
  end
  language "gl" do
    sha256 "f3d89daa10e4e6a760732e1a6e7ae111fd999cf6e1df1afd22819991c906716a"
    "gl"
  end
  language "it" do
    sha256 "8b7ffee9ff4c68d1bd6a9757fe4bb21f7d369c0de1682e5628ab83c4ea58eeb8"
    "it"
  end
  language "ja" do
    sha256 "7d048d261da967243b8e2a7083c0976d6a8b95bcaf9df654a04bbd0771c21e8b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "71e9ec02001fc44097e542e084b3fe4b4737e69e2359ba2805fb87d4ce60edf4"
    "nl"
  end
  language "pl" do
    sha256 "c1be479336fd0d040349138c2d6af397643903c7f9015355db421b36f3f66733"
    "pl"
  end
  language "pt" do
    sha256 "2d1021406d732f0f6fe66325d785c05f51fe1baeac57d36ae5c0d89bde393b57"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f7a0e56adfc945e1de38bed96a529eb0894886cbe0d91b41ac5705fc001664be"
    "pt-BR"
  end
  language "ru" do
    sha256 "c20d8d1202a711fe1d0187e5275ee1aa5153b0bd9922d3b6e0f8e19f82709c18"
    "ru"
  end
  language "uk" do
    sha256 "0abb29ddd88ecb5fb92adb1b7f98ed504851e2db5ec04b1ef9b9e77b621bc6dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "a1426002c2c791a925b084c5c3911f59079ba6aa1d274d828c6f79819a20d918"
    "zh-TW"
  end
  language "zh" do
    sha256 "84e01968b95e84bf692ed472b304ef5bc83fcfed046f6ae33bb6d253cfdeaaac"
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
