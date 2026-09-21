cask "thunderbird@daily" do
  version "158.0a1,2026-09-21-09-34-41"

  language "cs" do
    sha256 "b2b871aeef6416c7ddfd374f4a7b9c29551ced4382fc177aad255e9b88ecfdfd"
    "cs"
  end
  language "de" do
    sha256 "3c6464883bfbac4661add9df8fe2d7447670f3b1e4f7ab3c999eef390491185a"
    "de"
  end
  language "en-GB" do
    sha256 "551e83bd7abfdf40c93f4734a2a15c466f9f6431ea6d85409aa2b2a0f5fe8a71"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c58af15e91463f9ffc60fab926c60cb6b33618fba3bb3714840fbceb43b1f90d"
    "en-US"
  end
  language "fr" do
    sha256 "ba192ab33d4e16ca0a4471be43ce5db109ad0af5ceda0a65323a2f4626e8dbf2"
    "fr"
  end
  language "gl" do
    sha256 "cd0c7274ad49f2c8d132e68c2ba46579e4f1edca5592691d037ce782139532dc"
    "gl"
  end
  language "it" do
    sha256 "9c4b4f702ec2068f7715e9cf5318aef4985a11f6a99945e9a88ee3aef436eaa8"
    "it"
  end
  language "ja" do
    sha256 "bc3a896ee30e0e29ad45aa2df34b6e7fa0f738939181c45f00caef9088cd61a2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "90d5a902381d830615b44508e3f9be8e78345e4f986ca7d73e56055b755586c4"
    "nl"
  end
  language "pl" do
    sha256 "6241fc13a3050e257fd97a2e1b3bf7be9dcea74a5225d9f3e3984adb83e5b18f"
    "pl"
  end
  language "pt" do
    sha256 "8a8201a00bfd2bfe15ab96e6d0b60f85d8fe1ed0e41d45825da4252b7e1843b0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "cc5baa44fb396342446e91495890504c109fabaf7c0b7a49e1a8441711cdba7c"
    "pt-BR"
  end
  language "ru" do
    sha256 "bca38547c7b4ae27905e1e9ea78929d4df46c9b8b3df905c2cee345457e2428f"
    "ru"
  end
  language "uk" do
    sha256 "8a4a845a13ddc6af6e439d69aa0b947f5965afd92c3497dcea6c800f5a2823dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "5d4008efd28ac3a4ad53d9454ed04124250a255b303920e92bb74498fe767c24"
    "zh-TW"
  end
  language "zh" do
    sha256 "9d5155a625391bcb26e5fc9ab3a42861d170ff74d263f4ec52dc4628a6eeb799"
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
