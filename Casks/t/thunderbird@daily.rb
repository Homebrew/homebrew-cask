cask "thunderbird@daily" do
  version "153.0a1,2026-06-03-09-55-24"

  language "cs" do
    sha256 "cc12b26a599dd5f56f758c9348eb300e1a9f28e774534e4fea7acfc6cdb5624e"
    "cs"
  end
  language "de" do
    sha256 "7353497f0e9401bfaaea8abee73b68b0f33b179511d5e26236cce3ec63934a9a"
    "de"
  end
  language "en-GB" do
    sha256 "300e5c7e3c2269698b765008ede1c11f84d2fb1ddaff94e6fa53edaed43dab2d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "02617981a2f6a85ee9f136fdea2a9973da06f24b628a820e314fa7c4ea8922cd"
    "en-US"
  end
  language "fr" do
    sha256 "e1c47a336ee67d4e8a81d63e42ba88095dc585a419ec3abb930961d1e309a1eb"
    "fr"
  end
  language "gl" do
    sha256 "2912f0feafc65c932f7be22b464d49c674700d2203be58a499e750265c1b3681"
    "gl"
  end
  language "it" do
    sha256 "e4548ab95fd4b7a1ba945ce486aecc7eb8a073bc188f9e843804459f8c841d5a"
    "it"
  end
  language "ja" do
    sha256 "786dfd5e7d37a9b4a7e2dbd4d548d5b242d1ba8ca9a7f8d39a6922c5c65598c6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8870c9fbb240cc62ba6b304f6a9c04c0e6fa461859ac3c9476be051c4da6af9c"
    "nl"
  end
  language "pl" do
    sha256 "1c4ffd559443bd36fff074143b89db2d3d0e8d1421f005130d149a17790d54d9"
    "pl"
  end
  language "pt" do
    sha256 "3f5e1393ad013f4b01638f03d8b81b345c8388ba23382e604e2db7b836001162"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2d7f9f81a8a6443df689fc98cb0f73cbdfcc44e2f447833b3cac091e16e44ed3"
    "pt-BR"
  end
  language "ru" do
    sha256 "22bc27400ca0ea5bc65c51a94c173f87f6c108b5f8d1fd83ff75245589e9e87b"
    "ru"
  end
  language "uk" do
    sha256 "dd7fadc92f41cf493af19bc7b8661b46f5a2d5a4b115900c848635135041f631"
    "uk"
  end
  language "zh-TW" do
    sha256 "a417c77d7ce3c4dfb262f4d69a6ccac3f1aee0c4ee2b0432ef684f8665af6117"
    "zh-TW"
  end
  language "zh" do
    sha256 "7b5832aec26da58542d6e534cf10a15a4413548859cf324de04952089463c8d8"
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
  depends_on :macos

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
