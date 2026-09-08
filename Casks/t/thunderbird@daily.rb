cask "thunderbird@daily" do
  version "157.0a1,2026-09-08-06-49-33"

  language "cs" do
    sha256 "a516f7153d3e167bc2793538a2f36b1f83e57fec41073cb69a45a72272be4335"
    "cs"
  end
  language "de" do
    sha256 "3f005413efc691638631dbfeeefeb9eb89c52a4206441b5c870ae5d271ff64d7"
    "de"
  end
  language "en-GB" do
    sha256 "7fd41f752a307d69d7efcda84c8af7825db22d341cebd9462c370b5c3870be96"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4efb8744dca128884f5a841eaa19f8d59e2bb1a54d34e45f7f9354aad7f63d67"
    "en-US"
  end
  language "fr" do
    sha256 "a18856942be9364100883ff63244b25c69b086235563d23f9897286a32aff687"
    "fr"
  end
  language "gl" do
    sha256 "35163d1b74b701657d19b56ee642a94180d01aeaaea59774c0ea5c8b3056c2fd"
    "gl"
  end
  language "it" do
    sha256 "2ad81a47e08bebda4eb2c8e9d1adc68c2485d88a5d0fbfd80269b528e910eb1d"
    "it"
  end
  language "ja" do
    sha256 "8785e44906fd49e34b38e85db3942beeaca9f5bb2dae9275cf8205f21a2cbe79"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dd60583565026abca030f836786d656aecead0c18d3eca1777a17b2a9993a975"
    "nl"
  end
  language "pl" do
    sha256 "db4e856723b782aa813c0bf2d7e5acdcde4f6bde955620f5e7b71bb13d77ba3e"
    "pl"
  end
  language "pt" do
    sha256 "91f9a0b663f6b79496d3471e953e9c8fc86faa6e306e81f4b3bdc19930163487"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "57dbacc9dd50b8dab864794608b4b27adf0110d4852a8c2ed05e9a1462e7f681"
    "pt-BR"
  end
  language "ru" do
    sha256 "d3cc4a85f68e2a44f993c97b34e7d06047b985e32736359d39232a71edbb7b65"
    "ru"
  end
  language "uk" do
    sha256 "7ec01cc9ddf05123ded1e598f494f73c195b7777310376115599a8cd69ff71f6"
    "uk"
  end
  language "zh-TW" do
    sha256 "2c4e21c5ef36acd50f4bbe166b601f38950d433400267af61ed381330a8ebc20"
    "zh-TW"
  end
  language "zh" do
    sha256 "972576d849a4ce28157e81ac3b8e39e7e3b8e8f11771ea57fce1185ad8fe7b34"
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
