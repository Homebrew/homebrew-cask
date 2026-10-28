cask "thunderbird@daily" do
  version "161.0a1,2026-10-28-12-19-36"

  language "cs" do
    sha256 "9d0d245d700deab0ef4e54b4af2e963ac910743a62f3558cf005ba2f680d8fbb"
    "cs"
  end
  language "de" do
    sha256 "4fea178bbda4b2c586df463d3e9651b7a32d35d5818205964ad277ff938abf16"
    "de"
  end
  language "en-GB" do
    sha256 "1d0e59433d9e14e98fb012fa119a7f24d1b678dd1b562275d4543ca934cef812"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0ffe8265d3a2fff7b2bcd5c274a886efdda340a1961bc370407dd521e2cc2ec3"
    "en-US"
  end
  language "fr" do
    sha256 "da99be974e9089c53609289c271b19d7b947f25658b6630f18051b1102a621de"
    "fr"
  end
  language "gl" do
    sha256 "99a268486c78f26011f3d43975868e00c8ba6723467886374bee923537bee56d"
    "gl"
  end
  language "it" do
    sha256 "7909ef094804a79eb9f3db920156e89f2310657f5cefeb84ff89c6dabcf9c0f7"
    "it"
  end
  language "ja" do
    sha256 "de2b5f27bc96b3b490e761941d0f5b93f52f1bf51dbeb245b95a006e8e185012"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c208318ecc6d982ed4be456a6ec2a1365f79091a5f063655f27fe79f34ae95dd"
    "nl"
  end
  language "pl" do
    sha256 "47c6cae91b342be20ce9d759ba790ea22d8d2b4e8ad57c7dd097d6c15f8f3fb4"
    "pl"
  end
  language "pt" do
    sha256 "9bf63f4a3f6759f1ad1c4447e03364b4dd5927f4d98f10cd4dae51abac08e191"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0870f79b03702cc989885df6e25c4acadde0c50d92eb3aa4998ecb49cabd44c9"
    "pt-BR"
  end
  language "ru" do
    sha256 "74a9ac5fe3ff501f3e495a2f4e1822bd6650005450bc25f65f068d1bee46c62a"
    "ru"
  end
  language "uk" do
    sha256 "b0f8de2c98b10dada05adec830217609023e87b53e649d9e21e9f4b3359f2bef"
    "uk"
  end
  language "zh-TW" do
    sha256 "2e2425f465e98dccb8dfd0532dcc8cfde5ca9f6c2f410707c062eccb36f01b8e"
    "zh-TW"
  end
  language "zh" do
    sha256 "c5cdd4c752058ea21a956e6938305f2275f4e7ed854082f7a7ae824bbb1cd043"
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
