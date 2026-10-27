cask "thunderbird@daily" do
  version "161.0a1,2026-10-27-10-13-35"

  language "cs" do
    sha256 "642346c63356268d67bc396e5e8b152578e9ac6e25dcd48c07a95fa19b274934"
    "cs"
  end
  language "de" do
    sha256 "367710fd52e96a6f84dc38222572b05c3ef62370cb0449ec2908032a01b72b4c"
    "de"
  end
  language "en-GB" do
    sha256 "dfa71309fbf39dec9a5b095256ffb66307221079dec7bbce469b5e35a147c939"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ecdd6f3b989fb9a6529a8774580c2fa4cd1509dc813ab075f653cc7335f3e5e9"
    "en-US"
  end
  language "fr" do
    sha256 "49ea27e2850804efc01b5694a029992768e2bb444c894e05ce6c263984f070ca"
    "fr"
  end
  language "gl" do
    sha256 "4082aed8e8017167784ce36abf984982e1eedd51a7ee317f7d98cf908893ec37"
    "gl"
  end
  language "it" do
    sha256 "e7e82ea099fac07603dbcb24eb05bff32ea45a8fdac95d0d2b1ba1946aaf5802"
    "it"
  end
  language "ja" do
    sha256 "395b7dedb97635a3da2766ae7f56143e87f0ddb7b05618d0cd92ef23f9f71c97"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "32bd2460351baa9bbc4f5c0cdf93ed41d72012066b6db9df9f9429213a5d19fc"
    "nl"
  end
  language "pl" do
    sha256 "7b725d7ce7d805790431cee3d42ca1e9143714ec397949819275bb1ed30c28ce"
    "pl"
  end
  language "pt" do
    sha256 "2523111e8267d5acc82fd924600eef221b03a35b0d1696a8fada0a7223310363"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "efb09e0bc7ecc8de5a5915e05235520b25d634d9c273521b8c3da29588888147"
    "pt-BR"
  end
  language "ru" do
    sha256 "326b2a1632ca5d3f0f9c86bffe262e7af6b50424bde409013a867639ef6ddc8d"
    "ru"
  end
  language "uk" do
    sha256 "7e63de25dad49d56fdd0db9b9b63625e05404b833cbe653bb77e51855b3dc2b0"
    "uk"
  end
  language "zh-TW" do
    sha256 "b3bf8408e3e90e60226d08912c6c104076a86fa7a22eca43707a07d8d069af31"
    "zh-TW"
  end
  language "zh" do
    sha256 "2cad1354320e5d2cd6c4b72b71503b564ea0cf0f8c319b87159ee21ffa85915f"
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
