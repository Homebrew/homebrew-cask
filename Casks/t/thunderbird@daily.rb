cask "thunderbird@daily" do
  version "143.0a1,2025-08-16-10-16-59"

  language "cs" do
    sha256 "fefa79ae125758fda0a2054b4b3ede67864198bc3d089f070c5c288d807828f7"
    "cs"
  end
  language "de" do
    sha256 "e4dc20e5341b2e13fd67368187a10311cf0637c28e4a0b083b3c68ea7482df3a"
    "de"
  end
  language "en-GB" do
    sha256 "6526c81f2a071d45cd5cc078da79b0d200a4cdeb33bd788f961fe08ad30b78c5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "12bdc96571db0b14ca8c0f1b01ae7fbd4ace95c42435d92f1c1e8dccd7c26d7c"
    "en-US"
  end
  language "fr" do
    sha256 "70db59c434b49ac0870113d15580e4f0dffb56e11a303271aa8169523d179f17"
    "fr"
  end
  language "gl" do
    sha256 "370815ca4d621e7a26e69a42594e11e6e4c0aaae718f1f2ba91c5066697bbdd2"
    "gl"
  end
  language "it" do
    sha256 "e403f5262f3123ca9ff6abbacd6a9a08bb61ab78ba04f6627c0467e720ce8b05"
    "it"
  end
  language "ja" do
    sha256 "d67305a6f7e381f81fe271f2e9f88825a3b15d4ee0b1726cb50bb6783a261e90"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "14f1f75c29efa3e67407bb9b1bb47d386b146323abb2bf6fdaa88651d1f32c11"
    "nl"
  end
  language "pl" do
    sha256 "6905b41aa21a3e0728564d8c5fda5a7b4ddaa926bf13b0c6f91cf9436323f136"
    "pl"
  end
  language "pt" do
    sha256 "b5a66bf870f851307a1bd7651d657d887a844989465d78036fc68a139a1e8be8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b486f8b0a5b4017928d443ff9de158059467e35bbbf94a240f5897bcefc3ebc3"
    "pt-BR"
  end
  language "ru" do
    sha256 "664aca1783d8b2ed99e5ea24294b8915cbf915a832e72bd1a967eb5ca8f13113"
    "ru"
  end
  language "uk" do
    sha256 "cd49d511bac774299f26f6389a8d5fa45de517263383e1e3c3286741fb9d2ede"
    "uk"
  end
  language "zh-TW" do
    sha256 "aee380cf6bdd0f6d51b7c42690a9c8904300a25117638d232f0a312bf83700d5"
    "zh-TW"
  end
  language "zh" do
    sha256 "2ca1d32becbcc40e7bececa0788b212b0fae0904dcc70bcb9150d8bda05e8ce2"
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
