cask "thunderbird@daily" do
  version "156.0a1,2026-08-17-09-52-17"

  language "cs" do
    sha256 "95d3f3dd2f14af1a4b8cfaa54e3d55cd4f3668ba338799866f34bd66bf714abe"
    "cs"
  end
  language "de" do
    sha256 "44f43558ac7473783a7d29e60f3a80d68a652440d00416af0bab1975ac8d6cb6"
    "de"
  end
  language "en-GB" do
    sha256 "ca48ada16099874568fca56751343ec1d7a92f0e8daf413701bd7fba9ce85a4a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9f1304d23f2411a5bd3783047048240f738a14c349645792a6278a1deaaa49ca"
    "en-US"
  end
  language "fr" do
    sha256 "e393f4e512c3928df847e444d0ec803f6b175e2196472b5650f366c23af1e5df"
    "fr"
  end
  language "gl" do
    sha256 "8e52e6d44bc03001859954b8d20b84248bed1b3d1b3c93270f27d3791bdc943b"
    "gl"
  end
  language "it" do
    sha256 "1a5c118dbaa620dfa2179729cdac1c27ad4f272bb541fba65de393ebd80ab528"
    "it"
  end
  language "ja" do
    sha256 "3c9823ba5f3bce8ac5b126e407cf028cdcd699d6bb3f9aad4fbb9bc0caf02885"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "94a0f04c92abda649c499451ebe8bf7a036d25d44715855628275581db781d2a"
    "nl"
  end
  language "pl" do
    sha256 "c8775e89fe76c62875be5ae3b09985cc7c83d77446a683eb9dfdf55ce5294f8e"
    "pl"
  end
  language "pt" do
    sha256 "06471fac8563965f0f9aed069306f6b7226b26df7b2136cd2dfdfec8f7493472"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c8ec2d1a6e2e61dfcc392380ffb531217f68842db28531edad7c01cf8dfc846a"
    "pt-BR"
  end
  language "ru" do
    sha256 "ce854a8e4f2b969c304bdf97259a1da79ca779aa2aa5378f6d4cbab3b4fafc97"
    "ru"
  end
  language "uk" do
    sha256 "2b3079ce3a3df7ec6dc54dad5bb5d28134a35086bd42ad6c4b3f1ac2e0c4811a"
    "uk"
  end
  language "zh-TW" do
    sha256 "6ed1ff745c9bd7e5d1704f6d01ae15819ec77e6d465900b3d1054d44df7faa7a"
    "zh-TW"
  end
  language "zh" do
    sha256 "09239d7a275736c1b3d060bd9c5c53b47f3b2ef94921fea7e2a6c22398a8bcf2"
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
