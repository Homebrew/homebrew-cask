cask "thunderbird@daily" do
  version "149.0a1,2026-01-23-10-00-38"

  language "cs" do
    sha256 "bd3e661f981a13c47b15544caab0016c6279d35ab37c570522fb17048890cdbc"
    "cs"
  end
  language "de" do
    sha256 "29fc2ff28febc0f92651cf2a180b6a3eb9fe32c9f5cb12d469f2453d14e42f99"
    "de"
  end
  language "en-GB" do
    sha256 "bafa91522b7964a9e7bd48b7cf4fbff8fa4904f02eb45c878b439241806d5b7d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "970d634325825f75c9a76f9a13314a119807439a0355a860a9dd3943dc2e7a92"
    "en-US"
  end
  language "fr" do
    sha256 "749eeb366a75dda1ec41adefbe5d63cd225deb16dc9e92f308123abc8344be23"
    "fr"
  end
  language "gl" do
    sha256 "1b8bb6cd5590620a3946d6e54f06fe03cccf9fdc41441f53b5db522d887cfe90"
    "gl"
  end
  language "it" do
    sha256 "33f8cd2497260d0244cb12ec2828bd52c6b2e246c4c6a3045d328fab774874d0"
    "it"
  end
  language "ja" do
    sha256 "a1cd78588988237f4e207f30007b5866ea4e5c16717bb98930fd6f958063c1f7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "86379684f68b63bcc9c4e5e40ee6e747d366d97a16f5b4b09335cfd5b99741ea"
    "nl"
  end
  language "pl" do
    sha256 "1fe3cf2a97b885d76187c5c106e4325fe3a65b55777b93e5af1843da3ec0d0b9"
    "pl"
  end
  language "pt" do
    sha256 "1efdf6ad49585ce92728250d5efc92eb29697140259de8e0c74954e5deee3b12"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d6bfa2873a4afec2dc8aa5621b8b8e52bbf1b026468046b739efa4654716ef95"
    "pt-BR"
  end
  language "ru" do
    sha256 "21774c01fce061d1422146b56e393f1402be740fb8b84f6a7c1a2d5f79ef2533"
    "ru"
  end
  language "uk" do
    sha256 "d4ea1ffd9b894c19e09f9f2b8ac772d642cec4b3f3ee5e3718d6421b1e24959f"
    "uk"
  end
  language "zh-TW" do
    sha256 "7e348de9ae5b099d5138bc3a1953d27d47b21785aad6ce90c0660f4e356bef85"
    "zh-TW"
  end
  language "zh" do
    sha256 "563f28b0036ccdda767902a02b9cddd2bec9bd3b33391635809a21b68254981d"
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
