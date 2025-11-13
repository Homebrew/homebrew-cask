cask "thunderbird@daily" do
  version "147.0a1,2025-11-13-07-42-42"

  language "cs" do
    sha256 "731048f61f741ac54e3de8e2349a8777a8e2ce1a751fe10c2ab4702f4ab13cf6"
    "cs"
  end
  language "de" do
    sha256 "0be4f7c382d59bc7561020ab3b2701448dd95259bf9e79e5cb1bcb4e8f035ca0"
    "de"
  end
  language "en-GB" do
    sha256 "5a243dd0a0d90a8030679964977ed536459f08896fbfd0ca61dff49a22737f93"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7082f78d2c89bdad7d6ea582313a1cbac506c7ee55cf36cca02304cb4636b2b9"
    "en-US"
  end
  language "fr" do
    sha256 "e032628cf7dfd3d470df5dbb52d20fb56d939a1229a8def75cb16b450c85029e"
    "fr"
  end
  language "gl" do
    sha256 "605e6200cc38e49e2e1c06ccbad1d2ce1f4be099e33dcab1c8e70c441c222612"
    "gl"
  end
  language "it" do
    sha256 "4a87b77b4d798b0975d84cbb6b85e337f41fb4da170206950431e4b9830289b2"
    "it"
  end
  language "ja" do
    sha256 "29d45c374782796bfafddeabe7281f4000b6e92719b33336ceb6384e2fe8d357"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "19dca63537006f61243a5a16632ad0a069dee4945f1235ba98c5fc443e216718"
    "nl"
  end
  language "pl" do
    sha256 "853acf8634954b7749dc419478f7eeadd1f5ce884bfb2ac127061ad75bf5f191"
    "pl"
  end
  language "pt" do
    sha256 "1d58964fe0fe84e7533d501c3fffa76dbecdd765df4e0dd89f78438f4afc4326"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "51737ba73b7cf74c3c982eab8cf9825ee036147f964edbb82021dfd341a72b8e"
    "pt-BR"
  end
  language "ru" do
    sha256 "95332b2fef625f248cfd22070121eeb7db614ed34f551abae781d7c12e3134fe"
    "ru"
  end
  language "uk" do
    sha256 "100fec35bed16db1d46ed41d383c15ad5675e9aaceb648dc3e7b50fa05917e89"
    "uk"
  end
  language "zh-TW" do
    sha256 "3733a1716e29ad6c362dc4a5678dfe1c78655160f5b32a8fbd7c35f979f49c0b"
    "zh-TW"
  end
  language "zh" do
    sha256 "c24c58436685c84ed4b054a891ade08e8c17f6eb4002ef94adaf3a9c85b566f6"
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
