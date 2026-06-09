cask "thunderbird@daily" do
  version "153.0a1,2026-06-09-10-59-05"

  language "cs" do
    sha256 "c6588564a7a1bcd98e161e1517df05d4b8109c981e7386ca870c39e9f4fe85cf"
    "cs"
  end
  language "de" do
    sha256 "47b78bc54690481c889278a1163e1a15d439477a9bec2bc6ea2e3e7b4095bac3"
    "de"
  end
  language "en-GB" do
    sha256 "25a7ed6139bb569234596bf74a806ea2fc732b9f132826267d67a4118814ec21"
    "en-GB"
  end
  language "en", default: true do
    sha256 "62d9ba3a7786786b5bd4200ed3931eeaacc2b5f2b15dd6b1c6e57a7facd3a1d4"
    "en-US"
  end
  language "fr" do
    sha256 "d069c5f3f5dd6cb53ffa0bbcf3147b7e7af72ee43982185d7eed42bde75851b9"
    "fr"
  end
  language "gl" do
    sha256 "c41c609da44827b844a86995a8ec7767250cd3b914708ebc991f09943bcaf2c0"
    "gl"
  end
  language "it" do
    sha256 "4cf5796007bde9d36116d9375972109823c0d263e7427c7918bb389fbb8cd851"
    "it"
  end
  language "ja" do
    sha256 "d58df859d202da897720dcfe381746488c657b3d99d4a2edd2714d7b5b48484b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "88db835a6f3ad360006cee4efaed034094920fba577cd9475ad7fc2a9872f571"
    "nl"
  end
  language "pl" do
    sha256 "c66ec2e307f3be50ba1c06017193d819ece75f57fa8fae95eb8b686e871595b8"
    "pl"
  end
  language "pt" do
    sha256 "98f9cf6071fe7cd4e48c966058e29276fb23dfb44e0caf5730699151913d69f2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8f2646e1cda19b00551e51eefc190292554c615a37fdf4722e8449254fd1a073"
    "pt-BR"
  end
  language "ru" do
    sha256 "410542b535deaa1f304a070706d4fc166444667fa4ba85793c8ec90146483e38"
    "ru"
  end
  language "uk" do
    sha256 "51d4f57ddba82666ba6cbe34851f20e8387335000d24b1c638b6103edb1f4d04"
    "uk"
  end
  language "zh-TW" do
    sha256 "bd936fe1cf23adce24c4353a1736003ca1752352e78329c81ba278d25283c670"
    "zh-TW"
  end
  language "zh" do
    sha256 "a7dc65f17aa134268a1a565ef8d19e7c2ebbf70585a791bd4f113c749a4399c4"
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
