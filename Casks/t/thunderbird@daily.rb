cask "thunderbird@daily" do
  version "142.0a1,2025-07-08-09-30-40"

  language "cs" do
    sha256 "6892c72b96f5b0df8d5c2be9b006aa551bc8162dddfd8863046430d7891284df"
    "cs"
  end
  language "de" do
    sha256 "780eaa100f036ff27f4f0e95b0e06f263a31f233bc430088e520ef7560ed7db5"
    "de"
  end
  language "en-GB" do
    sha256 "e11e490a8c221d549b497333de4eb75fd0a8450349da6382aeb1cf0d0447c1ac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "822836acebd5038ee81dd2a42dbf8d9ea6ca01ba59678e32727bd80eb21b9a21"
    "en-US"
  end
  language "fr" do
    sha256 "6050dc411bb69310813f25dc5449a92f91247e022d49dfff6966d02c195e2b37"
    "fr"
  end
  language "gl" do
    sha256 "2f0415414c46f1f8bbf222412bd1f85fb44f05d8dd041d2d6171715aa01bf0d1"
    "gl"
  end
  language "it" do
    sha256 "9a636be4889c91864ed2b2e5dcca62dc80cae779818979de0b32768dc37ed2d6"
    "it"
  end
  language "ja" do
    sha256 "fa99eb7095d80ffaffbf644ac6e941470ba23ad63b7fbf0fbcd36e21f7a441e2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8ccc2be2785a043e9fc4cc925d17e623fb7ca43a761e0fad8e38756fc3d793c9"
    "nl"
  end
  language "pl" do
    sha256 "a592058aac8a010e9cbfadfc881128794d07309fcea45cd14d36f4ed607d226e"
    "pl"
  end
  language "pt" do
    sha256 "371168b040c226b824dbb699ddb319945541a3fc25115dae78cc1ea4ba8804f0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0d9907fadd51c5a2b22ede38c8f0c932477a5d4982e622f9f3928c3f0023b97a"
    "pt-BR"
  end
  language "ru" do
    sha256 "cbc8a638adca8bd2ba71a172a68c519f5215728de62f593a066c24759784d623"
    "ru"
  end
  language "uk" do
    sha256 "76efe16d11998b264f114e5f9439874adde503ed827efa1b3b33bba8af0a3d8d"
    "uk"
  end
  language "zh-TW" do
    sha256 "31fa585336093d7106885ddb7a508cb307b58e9b7c0b826c288a1aeb89b93e98"
    "zh-TW"
  end
  language "zh" do
    sha256 "13899a7765bb03a5d24263a5ac374a39ae909ba1df5a795e1a2a4037e97cbeda"
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
