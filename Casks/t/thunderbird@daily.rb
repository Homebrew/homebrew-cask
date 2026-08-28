cask "thunderbird@daily" do
  version "157.0a1,2026-08-28-10-31-28"

  language "cs" do
    sha256 "83e526b762e8eaddc063f503512cab295a8ad0c999ae748c55773b4f64e7d3ae"
    "cs"
  end
  language "de" do
    sha256 "8013a046b634e94f462253cc66971c0f5244af225c22caa297aba7c2bcf28c0b"
    "de"
  end
  language "en-GB" do
    sha256 "b576f0b405f0e5bccbefd9d8847c761a8aedb43fad6d89b45b033e167630bdf3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d92ba908192800528821cbb596f5b12ae53b4f71a63bed20f4142af30c843b09"
    "en-US"
  end
  language "fr" do
    sha256 "7c43a3c22e78e76e1f33972272ad7b5f69a2f2b0f3b1aee61f9ff0229830c121"
    "fr"
  end
  language "gl" do
    sha256 "99df7dbbac38a764a2dd998d4b16244350ac52c50d8eac34c83a9f843f18d9b7"
    "gl"
  end
  language "it" do
    sha256 "0bc2a0c7655133a14e16f9a1088d6a59c6e0512becc5b7db515c89029d2c85c4"
    "it"
  end
  language "ja" do
    sha256 "c740a328260dad7657595b32ae716d8d4d8f0c29bbd0fd0f296c8f79494e026c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a56f928c458d022f694efeab83459e85b42d8b45337d094ced2e488ab5aacc72"
    "nl"
  end
  language "pl" do
    sha256 "f35c6431b99bb73cd23ea61561498c5e1b74068109b0093e668a32d150df3027"
    "pl"
  end
  language "pt" do
    sha256 "19e2bb6aecb33041a708c33db0bb6068b492e09487e6441a86c024a4ec58be2c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4bcd9330095b6dcd4283a358d4c21a50ff87c59dd03d908e11497736d9ec52a1"
    "pt-BR"
  end
  language "ru" do
    sha256 "c043121e8debd656805efc7b0a1268abe1c365110c23b3d7d8e63239db9602b0"
    "ru"
  end
  language "uk" do
    sha256 "7022e59f806947a2c519dcedc51a6693db2f7c1d90f2d86e5f54ab10264760ba"
    "uk"
  end
  language "zh-TW" do
    sha256 "24cb7b3b096c774acc7c3da79ba2d277e2361b8eb1f352d27f478ef06ff78d48"
    "zh-TW"
  end
  language "zh" do
    sha256 "e0e6aef05b7512efefa62c69113e567d771cd193d3612c9d1bec461cb16eacc0"
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
