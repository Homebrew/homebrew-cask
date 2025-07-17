cask "thunderbird@daily" do
  version "142.0a1,2025-07-17-10-01-31"

  language "cs" do
    sha256 "2151615f8dbb036bff175e9c86092454a093278409f345b7101736cf928135cb"
    "cs"
  end
  language "de" do
    sha256 "10f17cd687384d2a825103da6ee552493b2daf8358d619a03f2c76210fbb5dd5"
    "de"
  end
  language "en-GB" do
    sha256 "2b1fe568a5574f3d89e97df8014ea919f6c0055d38711b93336ab20143c8b0e3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d67ee676c61c2e8f313cd213bc2ca998af6db85c2b01bbf3410f6c1a2716d665"
    "en-US"
  end
  language "fr" do
    sha256 "fe0de48eb92bd8bc5a434e99d441bf771a5c916d66c0d8969b16a268e08c58cd"
    "fr"
  end
  language "gl" do
    sha256 "f8685b49c8395eabfb4702029f088dc3a272c6d24a5f2c539cb8d713c70ae1df"
    "gl"
  end
  language "it" do
    sha256 "e11307c59608ce650c242d0b4d99c71bfb605cbe6d33d48374b1347845c86ada"
    "it"
  end
  language "ja" do
    sha256 "e7ec3e9d8b6d4729b4bfd9006471780199f6e5bc396eb5df091f2959f9946fa8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "51207f9b7953ee040a120df0aa418c341b1cb47c521fb05636a51b71b04aec81"
    "nl"
  end
  language "pl" do
    sha256 "d2e46953fa52c7c27e3d1e67796f548fed1096b5bdaf48492f560a70a5a15c43"
    "pl"
  end
  language "pt" do
    sha256 "64fab0f851ead1fd1050d11884b4e9206e5b1e0cb926657ce65fac1f435d216b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d3305e2b3b8767d6e07322a998e5c4804aab2fea1e165fbce5d5092167d639c8"
    "pt-BR"
  end
  language "ru" do
    sha256 "93bb6bbf24a3a61fb476876c27501fe26795eb69727bee9e53150291a47165c7"
    "ru"
  end
  language "uk" do
    sha256 "2e779e14ee4094afd9fbc6fbaec7b73add1d766e5d78cee05ca13e3be74ac3f1"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f0337a472c24058bf52432f1e4e3232040d3bc9456437140626f8d033840bd3"
    "zh-TW"
  end
  language "zh" do
    sha256 "beedece6b4e4a50273c50259f35931a5945d6fd0216e926bce48e2c00ed59391"
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
