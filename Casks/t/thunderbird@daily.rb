cask "thunderbird@daily" do
  version "140.0a1,2025-05-14-10-06-08"

  language "cs" do
    sha256 "03378b4721401091d65df111e4e0e0968f981e38aa20ad0923493db2368904de"
    "cs"
  end
  language "de" do
    sha256 "c8e19643dda6f3bfdb448f41797fc9164c62a4c03d45246494da20522756a36d"
    "de"
  end
  language "en-GB" do
    sha256 "edcdc694d2b8937f5c90b5524df945d2bc1dae7e26f9a7b5956a86c3b55f1a70"
    "en-GB"
  end
  language "en", default: true do
    sha256 "590dd12ba4c83e8ff341dac0e4d556b8a3b445bff1bc9de9a45fab5775db92af"
    "en-US"
  end
  language "fr" do
    sha256 "86c3851fafd72263bba0dc69106ee9b312060262e7960c6c0c39f61a5ae3b3a2"
    "fr"
  end
  language "gl" do
    sha256 "2c77749a15033019235e6a4a21c2850a1961d4582347fdc7d43fd90a2f52ddbf"
    "gl"
  end
  language "it" do
    sha256 "1fdde4fc520ae5f484c34bdb1f18d3c4f928b3727d062669976cf996b4d59f8d"
    "it"
  end
  language "ja" do
    sha256 "6585317269735009aef29173e1aa7890588c7a9b958bec59c4a486737ae3dcc3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9cb8995db65d6a08a89ce8c0206e4f2ee377c35dbe8f60c832be1a2cc036e7a8"
    "nl"
  end
  language "pl" do
    sha256 "9418832144108b110a0cad4f0ba5cf632c69627b055122f4a0f95c3fa5b0dcf4"
    "pl"
  end
  language "pt" do
    sha256 "a71247d9abfc0b6a7c39498793375e4ecf59ab44528473789f838de1a8567130"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d16a051164093589e5610216b2d6f6a7926b32265fababe8b7a52f84c7657555"
    "pt-BR"
  end
  language "ru" do
    sha256 "57b3a1a23baf8b5e282df31cf25f9f6943ac1ac37d38499ff028fcb9c4301cd7"
    "ru"
  end
  language "uk" do
    sha256 "cf31b051cac51957b66a1ac694233189d2afdf8a2a3eebde4d8ca2811759ca53"
    "uk"
  end
  language "zh-TW" do
    sha256 "5e788a75fa373954fb4b72f77df5ad85cf6a9f511e22cacea576d10f72efa8f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "34d368f06a4bf17562572f0be7ca14733c702d5bca874e0923d680f469d0864c"
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
