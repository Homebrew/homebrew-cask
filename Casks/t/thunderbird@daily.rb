cask "thunderbird@daily" do
  version "153.0a1,2026-05-26-09-57-38"

  language "cs" do
    sha256 "26573755a97a5b89512f1f8090776c208b918ec7734bc87eea999f257e49d79b"
    "cs"
  end
  language "de" do
    sha256 "e8be8cea2f36a732cd9cfa22b6c31274c823cf9515f999e1028433bb37190363"
    "de"
  end
  language "en-GB" do
    sha256 "91def798d30957f16f217cd148fbb0b171319085e9190e0412aacb6e1b5d1889"
    "en-GB"
  end
  language "en", default: true do
    sha256 "705a73f789c9d7c16ba499c5bb46979f44b958c7ee7c9a7503de3a056005d4a7"
    "en-US"
  end
  language "fr" do
    sha256 "08ec055e15227ae0ac498ee28da958e32908ddaaa0ca9a9faca6f4d41034df84"
    "fr"
  end
  language "gl" do
    sha256 "30ee364a6427b66959589e269c5b1fc43a405be9530eeddad52bcdf57caca38e"
    "gl"
  end
  language "it" do
    sha256 "fd0536727a28ac9884cf0940d199e9af0e9f63a03ff793eba22a9f87e2568a43"
    "it"
  end
  language "ja" do
    sha256 "df34ecad93b82e74565f9315fb341740429b01f66766144029b88025c05300ea"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cfeaf9e7d3412537975038bac0d279d25c7ad9e4f7b901bfdbfbacdf349d7308"
    "nl"
  end
  language "pl" do
    sha256 "d546d3d5784d4ee718f4a1b500c7fec1c65b2b924faa35da1f8d4f3b847bd166"
    "pl"
  end
  language "pt" do
    sha256 "346fa819c0677648de42c6db0cd6ad37cc54f6bba8aad590a8b9d50792301d0d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "dfcc69b42c549f7868b3bf0edfa70a5a2bea28e29880b52e434f68dce4618af2"
    "pt-BR"
  end
  language "ru" do
    sha256 "503ab4db188c5de855b416f4e2694ca7b556fa410feb5ff3b7bb6e34b461d1cd"
    "ru"
  end
  language "uk" do
    sha256 "1bb262c7d97ea3a063cc2b275ad5ed56931e90e1f1e38e24ec7fa79321381bce"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f25ebcd2ac11c4fb03751aeb162c1e99dcffb8c032ac79060ea7614d36cfa77"
    "zh-TW"
  end
  language "zh" do
    sha256 "0d7b870e86f948b0f3f5827afbcfc051b64ae9d7cf885eea110b291efb1889dd"
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
