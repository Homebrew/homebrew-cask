cask "thunderbird@daily" do
  version "140.0a1,2025-05-09-09-58-27"

  language "cs" do
    sha256 "6d5c1bc402e21bdf4c6bfc3f1d9236ba118136cebc7648b1dc5c95869bb1e013"
    "cs"
  end
  language "de" do
    sha256 "8b84d98178550fc1b24f82f1523041a83ff067866be2b314754a16dcee119e5e"
    "de"
  end
  language "en-GB" do
    sha256 "21d05e17c0f73adf1c858c5fcad0a1e72e99a07513a4a4773e7f8c17cbaaa606"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bdeba4ac34da59996ca782cd9fc084fb9ea0fa0f1dfd7e2dc0151b2caa26dc71"
    "en-US"
  end
  language "fr" do
    sha256 "df7e7f866135bad53b4cf58fff54bcc409a844719ba287bd80f8f7b725ca2c27"
    "fr"
  end
  language "gl" do
    sha256 "6eccbffcc295d7ad2c3e6d918701e088940e2e712a636ae32835f16ac4c9f40b"
    "gl"
  end
  language "it" do
    sha256 "8b9656a33f97b6a48fac067688669958454808fb717fd84ccd085c072d88eccb"
    "it"
  end
  language "ja" do
    sha256 "f87d22965ff04c469ba5cf67066db72d3828a8e3ef409e9d0cce9cd414e38f11"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e74fdecbaecc4713c709b62a82013495b27a4237abf30e28ae219306e2944612"
    "nl"
  end
  language "pl" do
    sha256 "3f8d9b2a5604f1259206b69e2219bcbce80b75a91e6d5236ed036588e3c57cd1"
    "pl"
  end
  language "pt" do
    sha256 "8b63b5e68e533fd50e56ad35cf10e4e244b9cbe77cbe61c36ab7e59f271787d8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6845421dc532f7038a6b107e130e8a12345373ba37ccf7cbbb4dc64c8f823fc0"
    "pt-BR"
  end
  language "ru" do
    sha256 "dc25cb03420c06735bc38f8e6b60288a6af1987e4f64d6e7ea5ef41564ba9848"
    "ru"
  end
  language "uk" do
    sha256 "5be8d065878c27295bf88dc5b42d673c049e06916d31ced67ce836ed7e59ae04"
    "uk"
  end
  language "zh-TW" do
    sha256 "869770f72ec561dcc10acff6d702b1c6cbf98fdf0f9ebc5a83be9a62d4c8f4f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "c4a88b80fab81e72b85a6fcd81d3d99284f4be9aaf1b23440723a3ba8635bea7"
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
