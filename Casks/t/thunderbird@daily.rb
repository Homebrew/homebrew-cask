cask "thunderbird@daily" do
  version "159.0a1,2026-09-25-10-19-08"

  language "cs" do
    sha256 "24cb1065eb21b654883b713b84785836f777c9541dc9af6a79b6632f620378cb"
    "cs"
  end
  language "de" do
    sha256 "18861115d4768403f29753b0aed37ffd0cfe9705aa487d4a894d28a611beae5e"
    "de"
  end
  language "en-GB" do
    sha256 "b3b9dad1335923d9353018bb835a70dd75c8b89560b2722ba25478a46f4e1bf4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a9362a240c5a0814eab6d9db3a99ecc6e74bfc8a01a58a32ec174e981b071f03"
    "en-US"
  end
  language "fr" do
    sha256 "e5f0b8f0b46392a5032affb853c25d3d2cb67550da1a00b36181603c89c2353a"
    "fr"
  end
  language "gl" do
    sha256 "e1e5179d710d300f5b1ad0cef1b185aef1254c8cfe8c2814999b8f98597d4603"
    "gl"
  end
  language "it" do
    sha256 "ce3c88af55c47275cddfce99e0823be9ee4511609ce69a01a69da7e2823773e0"
    "it"
  end
  language "ja" do
    sha256 "41d0b953726d65e1cd4e9fbb8192b08197c6d14733620cdd097941eb1f8c1daa"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4d3430f01b1ab1a21e82fb004ea311529215f80ddd40c9e6c8a4420f7b3e16d1"
    "nl"
  end
  language "pl" do
    sha256 "fd94ee72c96a6308cce318034467d2958a09bcc7b8c4ce85428553ab012ef243"
    "pl"
  end
  language "pt" do
    sha256 "c7208accf0806771dc9b000bcb265a178668ec5d758524cac89a8e584407d310"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ed59ea8a769927d1cb6aaa5a3d89eefb89e39bd145530cbd01eda41f2e35adc8"
    "pt-BR"
  end
  language "ru" do
    sha256 "133a71fbcf17ccef8564c4ed0eafe506a9fb41aa3f166e376990b7ac05a2354a"
    "ru"
  end
  language "uk" do
    sha256 "e974ef40f528db69ec7411e535e41a2b407c89010faf6a64ba4770eb63bdc9c4"
    "uk"
  end
  language "zh-TW" do
    sha256 "49d3120cb935454394bd4e3693d83cb1696ea707bccda82cb91746c11a51f435"
    "zh-TW"
  end
  language "zh" do
    sha256 "2a8c20e79ba0fec35f4b238e1ea1b7852467e90c0d4698b2c860188dbdedbbe4"
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
