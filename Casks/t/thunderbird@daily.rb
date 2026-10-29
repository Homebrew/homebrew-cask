cask "thunderbird@daily" do
  version "161.0a1,2026-10-29-10-13-27"

  language "cs" do
    sha256 "e8ee43594e24a4d9d8d052d77ce96ab07ad99e2bc2b42bb2a56dc872f303280b"
    "cs"
  end
  language "de" do
    sha256 "eb2d8b4e543d7a5521901a1758289053383e009228546c59f921ac6a3d299a63"
    "de"
  end
  language "en-GB" do
    sha256 "2c35852d19f24ecf7fc17f029bb50702b292e1939bcba48f093c5e3de3368c15"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4770b14a14a96b7dbf89ecb65c188adbb7bd95d207a7fbc9c24ad18606ed00b6"
    "en-US"
  end
  language "fr" do
    sha256 "4a62c086b2d4ae4204e8e5b2185bf4e280197c605d770117f905b9427aab3d70"
    "fr"
  end
  language "gl" do
    sha256 "f8f6757b4116e029e77f840dd693eeb12a116b5168b5f4e6c63a6c5ef8424416"
    "gl"
  end
  language "it" do
    sha256 "a36038d875e559a9e5c18300086444ee729855b2885e8894d44e4920436b1ce5"
    "it"
  end
  language "ja" do
    sha256 "69862954f813e4450edb897f934adab3b091f1023b9dc069fedfb2bf0548a7a0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0c6ec0e4ba36fbab73b24e988b412b631be4747ce9a1dcf8d332e94762569654"
    "nl"
  end
  language "pl" do
    sha256 "dd7de3ae9b58921d640da8a073b4ca19d3fbab0c192a27efc4f1bcd118335dde"
    "pl"
  end
  language "pt" do
    sha256 "f29985f53d3666b383ae9798f8df1b64a8a9601c1cf1a4afa51ffe981f8fc8b0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6e5eb6d7b869378a6d969ec90032a548c81b2b074036c4878df29f6a0eba4499"
    "pt-BR"
  end
  language "ru" do
    sha256 "887cbe12a31015c47231145c9e65a31591f3ea38c9c247d91b76c49d0fba5e13"
    "ru"
  end
  language "uk" do
    sha256 "9cc71d9b390fcf846d919230465ae91f0e49c44634cf16567903cf325b68f82b"
    "uk"
  end
  language "zh-TW" do
    sha256 "4e70e9459a57bf5dfccc467202f78f8a3abe20228727d8a81fc3e802af65e607"
    "zh-TW"
  end
  language "zh" do
    sha256 "b168ce5b8d2433aa430ce7532396888a10cb83165a3499b1a73fa264252fdecc"
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
