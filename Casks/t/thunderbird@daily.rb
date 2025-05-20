cask "thunderbird@daily" do
  version "140.0a1,2025-05-20-09-43-14"

  language "cs" do
    sha256 "ff323c429b41c8bd31b28dd0bdbdb7163e407ad557f510acad0188a8a5fe2ab3"
    "cs"
  end
  language "de" do
    sha256 "04a8646875b345cccad266679aa5b1a49f3c8066552fb4c74176c4c1865ccbbc"
    "de"
  end
  language "en-GB" do
    sha256 "aa29bd5af9099bb07bed8304789638b5f165cfd9a302d907c2bf260fc5215e54"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c1adde8fd8a90d1b7ef2134fcae81d6b61229a5e3f5536fe08b43f8c0d13382e"
    "en-US"
  end
  language "fr" do
    sha256 "ff696cbc19a588569a336de7537d8962b62ba4ed939f4d7aafd26b5234b1045b"
    "fr"
  end
  language "gl" do
    sha256 "e0ed1e4236d837956c72f116370bafb08ea0a54967c9a5e875a4a72bdd63f208"
    "gl"
  end
  language "it" do
    sha256 "9bef58cdbfcb4670b439b316ad7d7fd9fe882f024ce205971cdc9799e418e32e"
    "it"
  end
  language "ja" do
    sha256 "473de171edf6b50e8151f78b315f3b34f6dc6b9af313ef37a24bd837ebbeffa0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d5ace775808029fb22933b3f20c100e1954d427d9ec361ae594ed2787369c785"
    "nl"
  end
  language "pl" do
    sha256 "f1d0995d24d85673923ea3de8194cfb52db7b504e89d7eee8d0c1a5fae08e58f"
    "pl"
  end
  language "pt" do
    sha256 "fc1ae9dcf5b90fbd2f20fe40631ec157205ff523dc25c085b3a7a05b4c567ea9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fd6f04658bcdaacecebfa3626117e00d9e7329d0349e70921de08d97cf9d5ac3"
    "pt-BR"
  end
  language "ru" do
    sha256 "1ef3e1560609970a17c1280e14b00461bbaab49e46a799ba35c42d85c402c0f1"
    "ru"
  end
  language "uk" do
    sha256 "3c789f255cb8c4b1dc485ca0a63730f73bb15ed6436513add3092ee411f21f5d"
    "uk"
  end
  language "zh-TW" do
    sha256 "3f7e2e4830b2319549f8ca8be54e62a7bf44c4835ddf76d490ab64627f7a4a2e"
    "zh-TW"
  end
  language "zh" do
    sha256 "7c47b0ec856f3666eba31509b204873bfc6f04343dd38b838c575c4ab96f6102"
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
