cask "thunderbird@daily" do
  version "146.0a1,2025-10-24-10-02-00"

  language "cs" do
    sha256 "7bb439b9e13bb27634f4aa89633a93a50d8fd558be92fdd62fc837f48d0bd6f1"
    "cs"
  end
  language "de" do
    sha256 "290da7aa91643ed55b5ef8d566c67adf1ac266c6f8eb82f4c08c32555276df57"
    "de"
  end
  language "en-GB" do
    sha256 "3904a83d2eb55a7a50d08b6ff5d89fbf314c821eeec1217dcf9703b216a70955"
    "en-GB"
  end
  language "en", default: true do
    sha256 "40b5f20d00ad6284d48e7c4a6dcb6fa2029d9f386930f92d55f61069b7b7a36e"
    "en-US"
  end
  language "fr" do
    sha256 "79de31264a8417230ac04689d0c3b10a591a13b3928212dea6558399241507f2"
    "fr"
  end
  language "gl" do
    sha256 "bad9785dbe22899152fe08125cd76d3dfaa64e241e1dfef27f56e7eb9729f56c"
    "gl"
  end
  language "it" do
    sha256 "2099d69d01f4bdb80c4a6d453baa6f7c8438867ede29993d7eeabacdce0bd859"
    "it"
  end
  language "ja" do
    sha256 "bb0a81f92d32209a8142d780028ea6a3d80d20870b44e762bdfae561aac93348"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2c16746aa86b11a5674b02998380754fcd7657bbe9a3883a75ce21d70ea607fd"
    "nl"
  end
  language "pl" do
    sha256 "4d61c709dddce406b521875faa05ee471d021a508181a8f5aba9299c438f5d0a"
    "pl"
  end
  language "pt" do
    sha256 "47f5f2adc4a4f0594dc6c20d0dfb04488d14daed5a7903740b1b7b08fd41531b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "af8c58b0cdd148c75203c526fefd097e2945437a230328622e9746648f1db550"
    "pt-BR"
  end
  language "ru" do
    sha256 "ebc3b8df9bae5b200184f1a405418099270f6a63c9e24332381bf49ad16c8a2f"
    "ru"
  end
  language "uk" do
    sha256 "12bcf7d5223f247f1a1a9270e2049de4c1c44289407e747d70dc920576c5b285"
    "uk"
  end
  language "zh-TW" do
    sha256 "756cb7cad8584bb52198254f8317160b1b2a42c54c518e70fefacf55f1d7e89c"
    "zh-TW"
  end
  language "zh" do
    sha256 "8cee9e001dee338dae6b625b249ecb723197bf425e56e598324f3b8eda194dd9"
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
