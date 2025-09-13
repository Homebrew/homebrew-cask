cask "thunderbird@daily" do
  version "144.0a1,2025-09-13-10-17-21"

  language "cs" do
    sha256 "8f1e43cfe329ed16740934baae897a2ab4d4fc8207b8adeb9e28777cb7f6c3c4"
    "cs"
  end
  language "de" do
    sha256 "3a0af89dfb6c3dbdbd343f040f7efa130dba6f02032be550f43bf7ceb9b263d5"
    "de"
  end
  language "en-GB" do
    sha256 "fc2ef29c1f6eee73c0c61b2f3b72f1dab814b9fb720b6e3b2fa863448dd42e4d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5fecc7b650467681ae68fa9b8c4af43b80ec68d1f73b32da65994aefe3f431d9"
    "en-US"
  end
  language "fr" do
    sha256 "c0f701c79318a42ff85e084d0ae390969de0d1b1ab5c73b6cd61ca778c9b0624"
    "fr"
  end
  language "gl" do
    sha256 "31a7986ee8c553f49ea5492284bd3bb2a6523bcc099f69bbd3b04a0400ff53cd"
    "gl"
  end
  language "it" do
    sha256 "13598cd72a074d57f5349c385a53b648fb169b0d34fea5ab102149658642d077"
    "it"
  end
  language "ja" do
    sha256 "b9382ca262b94d4dd355fc78f90dd6bd28930cdc223f2bbe8410ec1c6322eef3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f72f02c2f6b704b8ab23a921db5a45513a0e3633683d0365c3d7d44ec12de336"
    "nl"
  end
  language "pl" do
    sha256 "fc9f87abbc29bf82b395539d3345f814815638f0a594c7010bd4f104c8735587"
    "pl"
  end
  language "pt" do
    sha256 "fd3c1e3b88eb732cb0a47a3965d00dacfdf0fdd135c45ca8684dbb22d680a1f1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7faa3dec5a4a20af64e0f9ee9fd80d45d8b281e665a1719d5084bf6d3311cb2a"
    "pt-BR"
  end
  language "ru" do
    sha256 "db4d813de2c152daf710d6407f29e6f0d08b732100c78b814772eca6a26c618f"
    "ru"
  end
  language "uk" do
    sha256 "945e31cfbe20775a1bab7b1f7f10c8e7a983cada2ad70498ed1b388b14b5829a"
    "uk"
  end
  language "zh-TW" do
    sha256 "735e6c4180c8b98f3b6a0aeee512291eb1de7955c899027a43b8f7f190d9d428"
    "zh-TW"
  end
  language "zh" do
    sha256 "673f18719b148a31e7b93f5fd15476f83b76d49d3abc74c0d27d6b31a3fb978f"
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
