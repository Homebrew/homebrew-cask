cask "thunderbird@daily" do
  version "155.0a1,2026-07-28-10-32-18"

  language "cs" do
    sha256 "a51636b5d64995a0ed68f591ad80742fa91651f3e541e79cce3928e072f0d961"
    "cs"
  end
  language "de" do
    sha256 "631a45451fd49bdf3a7d5dfcabdc5d71418afffcc8c36403b89b6ce659b4cc87"
    "de"
  end
  language "en-GB" do
    sha256 "5757c89f13431632d0de778a6e8b8405fd144adf2d527216518cd365f0c806ab"
    "en-GB"
  end
  language "en", default: true do
    sha256 "218380a2d4dcaf8d2a256f252854d4bcb763bc58fe72138bfb42bf36ef0819da"
    "en-US"
  end
  language "fr" do
    sha256 "d55000e90a373c00f2adf270630bd8a5325faa9ca16c0c1214973ef416602ef8"
    "fr"
  end
  language "gl" do
    sha256 "60f4ff41cac6f5bb3d41061952b85135ed82a4ef5be9caa499f933dee51f25d6"
    "gl"
  end
  language "it" do
    sha256 "bf94b32621b42e2ea7cdb06cd15e1553a23d79ecc763299495c5e5e9073e9afb"
    "it"
  end
  language "ja" do
    sha256 "123bb1bdc788410690439078b934ece2c48d631f4a6ddb8d8397b3ec8965184f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cf39e2a98b9e2f3bc7ddc1e003994c35872c272acd8b86bddb1090972c3b59e4"
    "nl"
  end
  language "pl" do
    sha256 "c87c9945b38d161792c9adb2a0020eb164b0d955c0d70af7ee4d3c7c650bd26b"
    "pl"
  end
  language "pt" do
    sha256 "945180c2c656b07b6fe07be753430b2b93159f5a8fc650d10c8692afe1aeb5d5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c8c1da6c60867959d94f2c264c40a7edf92aaba16a435fef340c6d4999823b7b"
    "pt-BR"
  end
  language "ru" do
    sha256 "5004fbb1678ad5f35c3db78296cbb4676ffdd3d1075b883b7232e02ab65af125"
    "ru"
  end
  language "uk" do
    sha256 "d1d98a521016da3358b30ebb3a860df6a0120e2e4d195e4e52213278900ce6d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "b472b9095e37d5d01c14e929ad3db61c34cb4b14b4d7564d3c2a64289ef36f9d"
    "zh-TW"
  end
  language "zh" do
    sha256 "0614fe0205e253ca32f5764e9953bd79cc5eab79f7694ae93ceb89bd786f04dd"
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
