cask "thunderbird@daily" do
  version "142.0a1,2025-07-21-10-14-22"

  language "cs" do
    sha256 "66061fc15e92560bd4c851b906780c765d77fc45e7bd6e3463616b472362bbc6"
    "cs"
  end
  language "de" do
    sha256 "611b71210d8d8d763ad57af74b3a769e8e9cf6edf9481bbcf142be2c70dd719e"
    "de"
  end
  language "en-GB" do
    sha256 "83153ef7abb9983410baf7e00df8ae40f0c2797b95d72235857bf25f7696d8ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ab909dafe1bb558765a3e3108450734ed0ee95b755e4901faec8d3d4b35ec392"
    "en-US"
  end
  language "fr" do
    sha256 "1dda0aadec401542165612314006a522b0f25dce2476c136f2803057eae7df44"
    "fr"
  end
  language "gl" do
    sha256 "c9e94dfa408c54723c40eae7e1e4f8219af96f394bb3f40238da36680fed3876"
    "gl"
  end
  language "it" do
    sha256 "6fbabb97ba007b6a2429b9ede40639d829aff63148a31426b41d0329389f3896"
    "it"
  end
  language "ja" do
    sha256 "d3da20c1ab164e9cad3f72cc66fba29bb19890328314e79f5e55c6e2a02828e8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b85f6a45e99cf7fd31ec803f8ee33efda42267425901154ebb3aade877366f38"
    "nl"
  end
  language "pl" do
    sha256 "7857fa1bd401d79c762b60884d059fae535564e3982f6f7080915f8e8890a01d"
    "pl"
  end
  language "pt" do
    sha256 "ab9b18e91758d3e783099989cf40c14234649c9b5f1f021c78387bf584d3ef77"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9fe82d67f45eb21990473ad68908984ad703ed393cfade840e7f052b1dad9817"
    "pt-BR"
  end
  language "ru" do
    sha256 "dd474bc86789dccc96d025c3a2958230690201a8192e08edf3eee1374fbbcd17"
    "ru"
  end
  language "uk" do
    sha256 "7ea62f55c3ca8fe601c5a4b2c476f4965c90a89f4fb1c98b457b72340d766dfa"
    "uk"
  end
  language "zh-TW" do
    sha256 "46d42419e9621e2b29e4e0fab64f95a227652c1776993f2934ea9da4c9cad39f"
    "zh-TW"
  end
  language "zh" do
    sha256 "b228fcfc95d40d72043c88bb304fb10c1790e39ad3bf999462ea474f35c4695d"
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
