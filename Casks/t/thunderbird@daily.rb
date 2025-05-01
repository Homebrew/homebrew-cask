cask "thunderbird@daily" do
  version "140.0a1,2025-05-01-01-01-57"

  language "cs" do
    sha256 "3b5c404ace58d97c0261e19f2ebc9212f009d650207a4b5b22f3a1e969f50cff"
    "cs"
  end
  language "de" do
    sha256 "552eb42f931daa6de060638e50160ca90e60e0ec229113682c68c3b537353d21"
    "de"
  end
  language "en-GB" do
    sha256 "b3acea09bc0f9ae98f4766586cdac6dc677744eb4d8a8af171af910c91590ed0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4ef40fe2706a24e1651e8e10cb8077d8aa695e3b49aeb3695113ed7d303fe6f1"
    "en-US"
  end
  language "fr" do
    sha256 "c1d12db6a6463d859bc65c95696b1057dd4095ce937e573a6262fd583b8f8ac6"
    "fr"
  end
  language "gl" do
    sha256 "ee3a1d50276c057b2610b90ee32773d75fb4f50c4ce4d256438cc8f9a8e3b9f6"
    "gl"
  end
  language "it" do
    sha256 "6b27b83010a90304b45a03992deea6d5fe60fdd815ae3e8beac149f3f6f7bd2e"
    "it"
  end
  language "ja" do
    sha256 "40d20a449c878c866352e33c3930e0c819829fde3512a0030148bf51658d28e9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "14cd87c88a890d7a3313d5125d48f1fad80b0895898ecf5e5fa70301e0926b41"
    "nl"
  end
  language "pl" do
    sha256 "eead551a61daeb77d5e6d626bc55151df0df9d6917d5c407d751b6d5cb32ba6c"
    "pl"
  end
  language "pt" do
    sha256 "9292bf6f9120b1a4dd0acf421de7194f53f13b56f298c3638d9e22c8bb512e2a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5487d6deafa04ad934c8e3f6292b50a45dbc094043f8378e84c7e136ab6d7b68"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b6c01b82f33943a5ad06dd2ac4a794b4331f7cd47c807fed2d29c51ea5318a8"
    "ru"
  end
  language "uk" do
    sha256 "4635ac9f8aef12754064f93efe0b1ba4f87c4f6eb6771d0299a88ad41e0280ee"
    "uk"
  end
  language "zh-TW" do
    sha256 "2036a3ce09c5105589b23cb2a432caecda8fde491d99b1e461991baa1ee73536"
    "zh-TW"
  end
  language "zh" do
    sha256 "254d6fa854bdf185a1dac092ed2f785e5865db54342615c382cf6558beb7b60b"
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
