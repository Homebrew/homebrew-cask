cask "thunderbird@daily" do
  version "140.0a1,2025-05-19-09-49-54"

  language "cs" do
    sha256 "e64d22c0cc24859ec6bc2db08c3aa366c58ded35cd59419e1bfeeaea723eefa3"
    "cs"
  end
  language "de" do
    sha256 "8c798fef94e16a490fa15d4e6da3f3b599f7aa738c5b3a65bfe0ebe82a600d2f"
    "de"
  end
  language "en-GB" do
    sha256 "86f8861b77807a8554a6a1c9ef8cb1d5b2c746d82288df32dcd9c7529d078d72"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1f396a41008d1903bf9dee087f5af9e50f25d84a76065911ef780eb1ad0e8c2b"
    "en-US"
  end
  language "fr" do
    sha256 "e93ad62b65d59367c15c49919ef0b42f5df4d506cef76f40fd204a23ef14612d"
    "fr"
  end
  language "gl" do
    sha256 "936503d4d683c28d02252a658e537cbca1110a0627ecd60df15b6dbe19d0f24b"
    "gl"
  end
  language "it" do
    sha256 "3f1315e14433cb962dcbd836543e85efa2c4db16cbe35b1cdf10451166f772f1"
    "it"
  end
  language "ja" do
    sha256 "b3554d3942a252b3d47e32da12f125e8a064ca4b223a8aab8549bf2f1a91bf37"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "12c4bbf84b5136ddafc44fb0e7deaf47debe48012d110f98396d01b216831ed2"
    "nl"
  end
  language "pl" do
    sha256 "be4adeead5661326356f8f4a086febb0ab7f43120c7cbca54a13ce977fe5ec0a"
    "pl"
  end
  language "pt" do
    sha256 "c0d90c3f4540bb0dd581a693226a951291a6f3ef775862ee3d77281edadc7368"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "71f0ad394c50383a91fcc251bb5ff3334c7d21079c122f4cbee2cfbeffc2a03c"
    "pt-BR"
  end
  language "ru" do
    sha256 "4add3ae313359a08cc89f84897d62600636a4972be3925552fb6b2e720ab295f"
    "ru"
  end
  language "uk" do
    sha256 "60f6306875f92782c4249e732efdf73c62ca1d92734553d173db8f11b9ae99d8"
    "uk"
  end
  language "zh-TW" do
    sha256 "32775aec40e62fff6f0ecf2f0ab8c2c951a8ae87032496f807546fa00ebd0357"
    "zh-TW"
  end
  language "zh" do
    sha256 "329f65b40e84f628eed026c15c17294f99ccab86c4cf72ab8c9797ce68ece8bc"
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
