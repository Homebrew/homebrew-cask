cask "thunderbird@daily" do
  version "139.0a1,2025-04-27-09-29-01"

  language "cs" do
    sha256 "4a04e4ede2cd355cd9b98f1eca4fa7fee3825b242ebeed30a5f19ad9801912f9"
    "cs"
  end
  language "de" do
    sha256 "ecbb1ad711cd43b1dc42c36b91adc10fead0a61b9019df8f8f4950a0833f322b"
    "de"
  end
  language "en-GB" do
    sha256 "fbec5f76ba49b91e079711a22c8387adf7b6ca509f91f49f5fc10c52b2ba82c5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aa9d610a5d02c9693c75b874e53edc7f065f434d72eed7c94450df506ea269b4"
    "en-US"
  end
  language "fr" do
    sha256 "c74e802f10231f23b9d42b69302348c1f70d858fd97771661a0f5460924d7f49"
    "fr"
  end
  language "gl" do
    sha256 "811e9b8f94c80a273c86cf0d4c54c33d7b43d16ba40eb013d2af5262bb0a4bf2"
    "gl"
  end
  language "it" do
    sha256 "4c6d5973ffa734fb13ab1bb9ffc7e3921df87e280f35f4f8f1075a8ef497ffa5"
    "it"
  end
  language "ja" do
    sha256 "5b7e0c9e59c12ec1a9770a2ff261e27d66497ad0e8222c1bddf527815ad6c205"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c2a023596ad3996b0c8a459719342e672236784d443ed8feba2fd709c84f4f1a"
    "nl"
  end
  language "pl" do
    sha256 "23c2f56d631be55aab2f422db616e691e8f7e0d1ff4cf62aeb3b7a40410ba4df"
    "pl"
  end
  language "pt" do
    sha256 "fa09a1eef210dc99caaecea49dd26669c7eacd51538174f8ef21951186aea593"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "642fd79deb952dbf58d5d84f60300c6b4ae73e982a874e8a4c5db45cede82b20"
    "pt-BR"
  end
  language "ru" do
    sha256 "f9d8497d964dc0e54ce04c5f02686763ec08adbf5c7ff5d83cba616af4fa3d93"
    "ru"
  end
  language "uk" do
    sha256 "d965c219505e3747470beee469ea77990b70984e128123566f40d85d7d0f3b09"
    "uk"
  end
  language "zh-TW" do
    sha256 "fb18ea59f8ee200cf87cbc4792a5fa285b5a92d1c397a756390336aee5357000"
    "zh-TW"
  end
  language "zh" do
    sha256 "f00aa32e31fb8f2a905ba4501761fe55cb246785baaa957b9d9a4318f8f2b670"
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
  depends_on macos: ">= :catalina"

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
