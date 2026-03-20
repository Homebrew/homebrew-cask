cask "thunderbird@daily" do
  version "150.0a1,2026-03-20-07-07-49"

  language "cs" do
    sha256 "8f1bd0a0f4554852c68c31a775cf7cf9ea5c752e772bd6ebc1bf091abb0df1d0"
    "cs"
  end
  language "de" do
    sha256 "746d40f6eca84878bd2702d7ce49b8c11e60ecfb38f03f43691b73411135d2c1"
    "de"
  end
  language "en-GB" do
    sha256 "b896c5be4aa7d1f69461d555e660e42d8e7a166d9b5d93ed8d1d878b9dd33ac6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "39dbfd00c42fae912f401d2576d12f5cf6a9866b0eb6953ef5a3691f7e8eb87f"
    "en-US"
  end
  language "fr" do
    sha256 "c6b6867a495a1e687c5326ffe4b4bb2eeee76cc992011502ddf9f68a42968507"
    "fr"
  end
  language "gl" do
    sha256 "bdd3707bacddc71564cd243b69674337a6c6138d94182a83cc9d1766f5584213"
    "gl"
  end
  language "it" do
    sha256 "6aafd6b189aeabf40737c36199fb4b15fddc8c811394982c6877a1da21f28efe"
    "it"
  end
  language "ja" do
    sha256 "94c8c1094c51b309497197e87b07e13ccd4bda620dbb708c80361da7ee775d7a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1b11399f726cfa887363d67bcbf5e1d814b750cb5183112461d61051308faed3"
    "nl"
  end
  language "pl" do
    sha256 "e54649669700fa99d5cc87b439c6d1377e554219224cc27226f493e5efeb0a6e"
    "pl"
  end
  language "pt" do
    sha256 "0025668d366b091e024feed42239ebec0dfd8519fcf9cb4894ed77270c67bb68"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "75bfad87e268dbd9a58a8b9bf13365385450e8a5231942cdc05533f1389fe23f"
    "pt-BR"
  end
  language "ru" do
    sha256 "851d8ff8348c5d6bd2928a6817e17b45dca8f866c629827cec82e8ce6e5e84be"
    "ru"
  end
  language "uk" do
    sha256 "5b35a72f55bb18bc85ca39ef7622d24568fce6bab38a453ff5005e8ac2f064e6"
    "uk"
  end
  language "zh-TW" do
    sha256 "1b1a18707f0f91a1abf313cec245e61e599284596806ad9e439657c7a47a3281"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ce750e84d7fb64d2dd027ee4b1391883a121761a5a1c127cac50f5977a559ad"
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
