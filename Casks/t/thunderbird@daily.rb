cask "thunderbird@daily" do
  version "141.0a1,2025-06-07-10-31-26"

  language "cs" do
    sha256 "159be0cbbc669fe86c327ff672b7da54b71a144462a3abe1f6c3c32933ea2dee"
    "cs"
  end
  language "de" do
    sha256 "92893356cb7d3eda282307e36f037230e9f68a0c0aa290f418ad32e28498b253"
    "de"
  end
  language "en-GB" do
    sha256 "c7893d2efc54029b2482b89698f5bff03411d035a04a9fc7b3e235416d38c8ae"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3dc054349e95eeee03c228eb1d9bd77dd2722288aa53e1af366e9de1774bb1ea"
    "en-US"
  end
  language "fr" do
    sha256 "15e3edd4d92e8189024b38901ba1db17fa099d7263367750705d0e14e4f56804"
    "fr"
  end
  language "gl" do
    sha256 "1b1820431a0616dbe2a9379b2b9d26f12cb1c8176635a9ef18dcfb253d6e3861"
    "gl"
  end
  language "it" do
    sha256 "18de604be834c5f0c716592a2600bf1483d2fe709e8c9b12fadd180ac57ecb12"
    "it"
  end
  language "ja" do
    sha256 "c7f21ea6808ac96d1544273af245522b7541c54af2cf0324b58802ddfa9bd537"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2cdd621eaf345ded094da21f61f2abfecf54856daced2fdd35fb307881fb7bb0"
    "nl"
  end
  language "pl" do
    sha256 "041239560a9b22973a3f2f44bf614ed994c0c43fdf0be3ee697987e855f5c843"
    "pl"
  end
  language "pt" do
    sha256 "c7130e671eae169ccca0e7f2535ee800162363a92d77867a28dea47fbd7abb46"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a786c98823a1067f225aa074d94494286b98a3ec5d757700d44e0874aa7cb393"
    "pt-BR"
  end
  language "ru" do
    sha256 "b26e6e98948b9b98c0ba4db536a4f2b2db02387b4310e39063afb79787bd414e"
    "ru"
  end
  language "uk" do
    sha256 "ef28ab6b148dc7d9ad9374d187bad7955b4eb52b78ecdec1dc48122923923da3"
    "uk"
  end
  language "zh-TW" do
    sha256 "905245ea67dd3e6b81c8a85a67e29a813ce310dcf65deff9dc6c7e6ec21b4632"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a62ab211bce35f35f7114db7c93bc52a100618cb7cc0b8d9da9f17d195f5f83"
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
