cask "thunderbird@daily" do
  version "142.0a1,2025-07-19-10-24-35"

  language "cs" do
    sha256 "1f187d01c3a48921b36e890c1c4311d5717f643ac3c5c801c504e8345cb649ed"
    "cs"
  end
  language "de" do
    sha256 "00f96be152fe4c3fecc9e1152e522a7360f143c1bdb5d67343fad6f672fac491"
    "de"
  end
  language "en-GB" do
    sha256 "eb3ba51b91a21159d681a7a30f70c5c440a8e7ab8f1c8e2ed773ead80dccaba4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b4579fab11e2b9f0448f0c4d30f7f2beaaf6ce0e3dc1910b019dab7b5b6fa68e"
    "en-US"
  end
  language "fr" do
    sha256 "c5c41aedb6f45f0c932851b509c2e144e99e4395cffb2a77abc86ef127e52d16"
    "fr"
  end
  language "gl" do
    sha256 "8b846a51654a8bc72b9015821ddd305f06d09098e7a04318dcb2dfac2f1d1d60"
    "gl"
  end
  language "it" do
    sha256 "d98cf1e78bfa8fbf1d61a6de511b7833836610acf8b92bc79e067a4abc5a65dc"
    "it"
  end
  language "ja" do
    sha256 "6b446217e72f6cd652fb60b0ce23910aa3ff1fc9c27e0f609b49ec9f2685a923"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a9ad4ae57ef94af8157e9abe3dcf7c07d87645fae54b2185903ae1b59d386ca1"
    "nl"
  end
  language "pl" do
    sha256 "6bc641778d6ae4977903ccf99947ca33d6578daa8de9347ee6876af799238a35"
    "pl"
  end
  language "pt" do
    sha256 "5415d5f99275a3d23159b6cc80bcbffd41371fd98fdfcf1a5b171399392875e8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "de0244744438513ac2e3def7618006fea47cd46d1772ca6abb15de8681f6ebc3"
    "pt-BR"
  end
  language "ru" do
    sha256 "1bc4817380d4c06d243031f33c0e9c2b3c111273f668aa9587cbcfddd5c5ecd3"
    "ru"
  end
  language "uk" do
    sha256 "61f6fbeb1f7a71abbc53e3bd18f1ad2a79f1e669b0435173e482e762e4c24c3d"
    "uk"
  end
  language "zh-TW" do
    sha256 "8be0e748ff3425b027e3e70dabae6ab3ce5fc30b322b64a2229e2565dd8a661c"
    "zh-TW"
  end
  language "zh" do
    sha256 "af9e7c918de54f44ae533ae946a20f64c4a16524bd3c41b9f6871e35775bfabf"
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
