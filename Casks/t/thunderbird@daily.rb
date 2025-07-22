cask "thunderbird@daily" do
  version "143.0a1,2025-07-22-10-15-44"

  language "cs" do
    sha256 "12fe916bfe8be6e997d84c2d892855494a095f2c2229fdd33b1893a96d2989ea"
    "cs"
  end
  language "de" do
    sha256 "d9672dc5d6f265709e09f0d935aba7026bb5846d2336d78002ba2ae2f1caa335"
    "de"
  end
  language "en-GB" do
    sha256 "ed3dbcaa16c8801c6921edb2444eb82bfca9fb67b0314bf16939a2a82860f9c0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5fef8811453e351c5c7b4dfcdf2ec729e1df158b43706f5c4c93edff03e802ba"
    "en-US"
  end
  language "fr" do
    sha256 "ccfa11dc7bdfe01c2ca99a5a97e0fa380bc19fd029150dbfe54797882634e4e9"
    "fr"
  end
  language "gl" do
    sha256 "4f3ed8b03a2194353150cb3ebfd8ee58350a61f706f208d4ba49d0c1e0244311"
    "gl"
  end
  language "it" do
    sha256 "1b7c9399ca5b947a85930b0aa2a9895c53147b641a40cad5f14c317453fd85a0"
    "it"
  end
  language "ja" do
    sha256 "701e094ccb29bfa76eaf283dbdd792bb04b6ab920ff958c2175c3a82cdb2487b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5fdeb3a59b32f49df2ffefc9c315c066823406ac12a0b9c75dfe6d657e68dffb"
    "nl"
  end
  language "pl" do
    sha256 "0e18b3502e672ae1ac3b656b122d52cb4c752fe0508d634ee5ff400a4ba945dd"
    "pl"
  end
  language "pt" do
    sha256 "f16722a4dc6a2f5aadf0eca390539aa96ad6ba424e400d5d834ddae7c8e4c20f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "948c88b51788fac42321085e49f388b7a7f7845f6835f9b221f07b81ecb353d4"
    "pt-BR"
  end
  language "ru" do
    sha256 "30166d6ddd8275aba7881feb31fc21d4f9917fa85defd519c8ad4e3395397262"
    "ru"
  end
  language "uk" do
    sha256 "ab68c55828cadca8dbcefd140c46fb13aca8ae7883f5d9029bdff1b77b58cee8"
    "uk"
  end
  language "zh-TW" do
    sha256 "eaa85aa44ae89007977488fe1cdd6bfb55db78a2cd8868524e4b0c84f10b3973"
    "zh-TW"
  end
  language "zh" do
    sha256 "5b5accad2bad6ed26a55ced232f16f30fac8c8e05c8a9e78b447be70709e9628"
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
