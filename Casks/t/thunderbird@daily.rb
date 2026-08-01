cask "thunderbird@daily" do
  version "155.0a1,2026-08-01-10-17-16"

  language "cs" do
    sha256 "049f28937e3cf85b89e0c5ff7a4b66767bf41337d0cadabbed367d4bfd3bec93"
    "cs"
  end
  language "de" do
    sha256 "6f838584a271bbede8c36316a1c02299920e4473ab9f902fd6bd8eebc493b108"
    "de"
  end
  language "en-GB" do
    sha256 "0a24d7cccb9f28325caff33dc70db2bccaf00fd2a2f409c5ac091eba39e52598"
    "en-GB"
  end
  language "en", default: true do
    sha256 "769a826a19281d83f65620865e2f2305ba78a0ed83fb539d745177991d3f7f27"
    "en-US"
  end
  language "fr" do
    sha256 "75a728a0e6fea603c5f398555b36976867b1009afda77cb6be1f3ba1538128ca"
    "fr"
  end
  language "gl" do
    sha256 "3ef87de33d83526ec0206ae6c35fcda7ebc25171a4d55f146dfcba16cf02f4d3"
    "gl"
  end
  language "it" do
    sha256 "fea67c8b412f76151625649e556ba44a00e5d0f0560f317ac508862e9beafdb5"
    "it"
  end
  language "ja" do
    sha256 "4190161a3ae0f25ed33cbd32c1c2304d2b3a34b989ab4b9abe6d5b7d2819b1c3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6754769424f92751fc91d562177e4994f16962961014e1004563921c017c6911"
    "nl"
  end
  language "pl" do
    sha256 "78eb3270333dbb0c7979d44ebd480304b06393e22380875eca41d323dd202001"
    "pl"
  end
  language "pt" do
    sha256 "7b73b4c46b99b810f8a3a0eb56574c1f6c2ca91473fdcba2c7454bd1d6877a40"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "075900a7b843f34f1585ad430412ad2f11c2e2aaa662bc0f0e9f59b1e0213fbc"
    "pt-BR"
  end
  language "ru" do
    sha256 "9c45735db64c1c63034b0c6e4f8df9aaadcfa2d6f0d141810f4aaabd5d0ed2d0"
    "ru"
  end
  language "uk" do
    sha256 "1a8d8f7d23a349e982a8a4d63b3033122097b81157aa34e652448424cea012be"
    "uk"
  end
  language "zh-TW" do
    sha256 "051a3a5cc7e5969384ca125d0be492d1a36fc43454b1216bd6ff080271f69c83"
    "zh-TW"
  end
  language "zh" do
    sha256 "905e5059a60fb6ea4ce686335273b4ec85022a7e6f7dae056acc2a21c6c777c2"
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
