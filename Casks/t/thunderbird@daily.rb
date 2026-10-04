cask "thunderbird@daily" do
  version "159.0a1,2026-10-03-10-05-40"

  language "cs" do
    sha256 "657b76040690cf65f329043a2fda5104523e251478f44e946b73e613937f9487"
    "cs"
  end
  language "de" do
    sha256 "42a56c3480d9fc94b3162ee041a894121e34d9d3ad7fe1e6e34f37e60bb4ee7b"
    "de"
  end
  language "en-GB" do
    sha256 "600b31b5923238b89f47b7f00ad444205e57cffa738bd79a7ca9ba3d0830c750"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ec93689ce19b23bd31b4a5fd1cbfbac2aae882fe87672a6836684acd1349dac"
    "en-US"
  end
  language "fr" do
    sha256 "5ee685137807aaaffd7994c5b774f19bb2a05cac020e184fdf231c0462b57571"
    "fr"
  end
  language "gl" do
    sha256 "39bd872f3d6d8a43a63891910f7f9bed76485604baf50338358cfd57721ea9fc"
    "gl"
  end
  language "it" do
    sha256 "c4488c0538da4cae1ec8f0985e6e4a5aee626bdc75e079e8982533eba8064c75"
    "it"
  end
  language "ja" do
    sha256 "e6f47814a23959cbe2266ce7b845f8152668a340aa9cb5e6909aacaca9a77ee5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "00c3afa3f6ebf70df3e7e8e5d0f56eb46960e4b221d577e02b7f55baa757f073"
    "nl"
  end
  language "pl" do
    sha256 "639e47a133bf76da39ec82f7d6768c3777095cf5b889171f1641c120d2009bba"
    "pl"
  end
  language "pt" do
    sha256 "d6df45242a28d76606d7458485ca37ebf35092130d7397774748c375ef1cd7de"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c352801f92b349c93e93c2871e2375a5a96e8adea2d98f2357e0158786630a03"
    "pt-BR"
  end
  language "ru" do
    sha256 "31e6d2b835e71b4ec4db04e8591b838a46ea8c33b5f178054dc76ec1125d6e7a"
    "ru"
  end
  language "uk" do
    sha256 "c4679f3fde3ab1468f5450d467a9fc17fc222a5dfcf727b7f61c628653297b57"
    "uk"
  end
  language "zh-TW" do
    sha256 "255e11212f5c658868d8ecc773817b326af311448986dafd006465d77dec2581"
    "zh-TW"
  end
  language "zh" do
    sha256 "bfa31de5a487051226c7f79b54f1b8fa6d3570b8c7348f16146d9e80bdb24483"
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
