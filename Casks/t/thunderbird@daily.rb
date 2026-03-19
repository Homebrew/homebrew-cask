cask "thunderbird@daily" do
  version "150.0a1,2026-03-19-06-53-22"

  language "cs" do
    sha256 "89b7c661a4198ad0b8370386f9e1d6885b2b68847062dfdc44684b6005d7d771"
    "cs"
  end
  language "de" do
    sha256 "73ff6f4a02429fa1bd1595eb5a33bd0f18fc6c86be44e85abc667fd5cb56bbb0"
    "de"
  end
  language "en-GB" do
    sha256 "f0a6a231a7d075a9c7b6271a96d23da8ed93b7f3db015018c1889e6e873b14ed"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5b32d0ea0b8c12cbdfd67db2019ad16bb16da3638bf13d5e385dca8069860128"
    "en-US"
  end
  language "fr" do
    sha256 "21ef15b125fedeed90f333bf5237b2b79142970a48cd84a6c0f9b12f65a2d7ac"
    "fr"
  end
  language "gl" do
    sha256 "292f482014a5c2b7f8b61ef6dae9e4804aaf97f74fe7afb5883c32709db98d6f"
    "gl"
  end
  language "it" do
    sha256 "70bd7d2304995f4da437e52070fa5ad4bde0f0b66a0096d26e4ba3fbabd789f8"
    "it"
  end
  language "ja" do
    sha256 "8cf638098bd87dee41f3c0f27235f9948a76c84c49d1d231d3295e45f874236d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "39f3212253bca8caa5fe836a5aa66baacf89846766ebafb2c0abfb48bddc75c3"
    "nl"
  end
  language "pl" do
    sha256 "ef26b6152217d5edc167e0980af504c334c7282f3e88d9d99899aacf083eb143"
    "pl"
  end
  language "pt" do
    sha256 "8daa6985d7d6680aca501683ae1e718fd90c3abdc3e72ee14cdbf751986bcd6d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "86f56a1dd48b61b13afa85f5d4d0e01251f7cc364825a090cb782607c0c1cc7f"
    "pt-BR"
  end
  language "ru" do
    sha256 "9d822015fd709b4c69fb51fa0ddbe991d018c0752341cb25f66d22ee11f2913a"
    "ru"
  end
  language "uk" do
    sha256 "a16dc2af1bb23ced4225f63fda7bb06bf1a1fbffeca465f38a9b45f8fcf0cad9"
    "uk"
  end
  language "zh-TW" do
    sha256 "0b9c091678b2b4c5421fa5043042e4391367c8fd2748ac06b1a6875e75101446"
    "zh-TW"
  end
  language "zh" do
    sha256 "8efd63f6625dfeda1c1eefbe3d4c6f281cd6406290779113b1405e872b221d57"
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
