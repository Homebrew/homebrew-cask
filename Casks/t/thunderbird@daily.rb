cask "thunderbird@daily" do
  version "162.0a1,2026-11-08-10-37-13"

  language "cs" do
    sha256 "b4d6ec2f0e3e143011e0d0e9f3df24aa0b9860f6aa462d62ed6c64f2fd60bebd"
    "cs"
  end
  language "de" do
    sha256 "1e1dc999f8e4a5c18f8458884325db6c299052e6068bb4bddd664f59ab3242fd"
    "de"
  end
  language "en-GB" do
    sha256 "a0927c97b2e07285c27e906fe9cba774e4b8ff388d7734d35519ae639085a152"
    "en-GB"
  end
  language "en", default: true do
    sha256 "39c7e909c0f6bbaf844867e9162fee2fef27436323253504a79fc96673dbad94"
    "en-US"
  end
  language "fr" do
    sha256 "2738cdf03f22a95f8e0063416d996f9bd8abb620f5b73178bb178d0abde5858b"
    "fr"
  end
  language "gl" do
    sha256 "2ec8393cf0ff34fbf9cc3d08f952b4de340512a1912aad006e0940f6551137fb"
    "gl"
  end
  language "it" do
    sha256 "de4f7a705ab6b5b9d77e987d7ab364555364717f3b19be3e0864df976e055bb1"
    "it"
  end
  language "ja" do
    sha256 "8a2db2a3e3519b04195543c52468634a00a255507a2dcbe9589c55bfbd626033"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "eebfb03659995e1747fc6b4fd08e9c765c78369aa21dba5672c48dc5d6d4b3d0"
    "nl"
  end
  language "pl" do
    sha256 "d435228e173f2895af0dd70e97273b2c82e43b69c9008fd5220a016459192de7"
    "pl"
  end
  language "pt" do
    sha256 "fc345c284ef166361e8841396b4f1f50a564d17dbcbcae93b8c5056ea0a45f5a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "51ac907a42eb348dfdbcaa9a5ea48b5f9749af366dbde471d4e14bacb5ee56fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "0f3632ead192e955c6eb65d048e9a94df76c5cc06a31b6b5ac8ed40f510826b4"
    "ru"
  end
  language "uk" do
    sha256 "42118765f35c095ccf3950f289e03197590c11e10a3ec3b536750a3c5ed1b71b"
    "uk"
  end
  language "zh-TW" do
    sha256 "7a71bf17e7eae73ad9a37b2fc929b4e84956d664fb0ae870c50ed031075dce34"
    "zh-TW"
  end
  language "zh" do
    sha256 "de920ad1a93378fb4d33b7e4165767ecdb1d7d525efe8e2b8661e39076123e05"
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
