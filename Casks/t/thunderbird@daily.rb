cask "thunderbird@daily" do
  version "142.0a1,2025-07-15-09-19-03"

  language "cs" do
    sha256 "dff281a40bcb8aac6f950909d388cfd2c0d679ae6026f08740a59ff890ef8c72"
    "cs"
  end
  language "de" do
    sha256 "fd6bb456fd75e051a998564e2b978be348c89f95990465225c193676d00b6e52"
    "de"
  end
  language "en-GB" do
    sha256 "55d0ba8ffa54229235fed0dae2fa29db5a3fdce6cf4342d6f483b524937759a8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6ce3f14565ac652608633d5d18a1cce36b6bb327c4b635962f06698653827b4c"
    "en-US"
  end
  language "fr" do
    sha256 "06004de2201de9b69120967b8f052af40c9d6af006008015cfc2c03851602627"
    "fr"
  end
  language "gl" do
    sha256 "8c757025c05798ae7d6a9548f609e4967d03dad2aa4655a5fdc1c7bcfd490d23"
    "gl"
  end
  language "it" do
    sha256 "487e0e10d219c4be0322f45818d174b5c8c521460041a535690994dd9b99ae75"
    "it"
  end
  language "ja" do
    sha256 "1363e10e173b13b070cf26360c754d0c65a9409e295b8544c0b5e24bb8243f41"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1816181a564d1edf53f3a37d60864ebda942b3c60c7dbeeb9ae7bfe2bb4bd64d"
    "nl"
  end
  language "pl" do
    sha256 "87cd00a9bd4892fc1d87bcd6ceefa96c97e3b954f573d8fdb16beac7e19caefa"
    "pl"
  end
  language "pt" do
    sha256 "283b89918df457d1185d4e2b82410c2757aa99b8c1883ac333d39086c1e62672"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9125d0bd7431755623216b3b81939321bcec7162f49aca537c8e6635ab8daac2"
    "pt-BR"
  end
  language "ru" do
    sha256 "a57a3a2623b06c314e3d14080487564292cfad6e0370e382c51c929ea5f63440"
    "ru"
  end
  language "uk" do
    sha256 "94b56785bb443f494c59a8cea804d143099d24766e81927457f04c716275f1f1"
    "uk"
  end
  language "zh-TW" do
    sha256 "06e0f9261790faa46fb747ad226acd6376bc0724e35f35ef8d7e242ce116901f"
    "zh-TW"
  end
  language "zh" do
    sha256 "bc076effd01dab6508d49fdb57dd08ad943752c6dbd77311fe79a85310bf928c"
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
