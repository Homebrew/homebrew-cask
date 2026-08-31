cask "thunderbird@daily" do
  version "157.0a1,2026-08-30-06-50-10"

  language "cs" do
    sha256 "5d9872b1beb211449a721ba594d73c515f14f0ae333e97619e275d406fe1fb07"
    "cs"
  end
  language "de" do
    sha256 "7a8d8fe5e450625545b4f863e63dbe078fe4753916b5c7c643a3517bda2bbae2"
    "de"
  end
  language "en-GB" do
    sha256 "b071de1b85fcf1365284f1784baddab4b06624ee5215be41f82df9cbfd8a711f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "57a460c36ebc7eac1629861e852e8c6e6214e0fcd809882483171b0befa4aa28"
    "en-US"
  end
  language "fr" do
    sha256 "2dcb4e690d9cdf391e52ccc3bb5b30a26dcb98a7162808221d99938ef0f420b6"
    "fr"
  end
  language "gl" do
    sha256 "99e47929f79b2990d08a16128be8a02e151394394aa9de13d2dbd1ad8b10be8b"
    "gl"
  end
  language "it" do
    sha256 "b2961c6102856bcaeefc2c35c4454755ccf8443efab7bdbf531e154045cfc964"
    "it"
  end
  language "ja" do
    sha256 "ac346ffbf364b19207e429e0eac96fe04c6f8b38cd8e3f4fe053eadef87a8875"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "034db3447ebda09e4af9428bb70aaabd775f56d1ca6972c0c05c85d7ee8826ef"
    "nl"
  end
  language "pl" do
    sha256 "9084ddf78a89fb8a58e5f3cc63ba73b6cef171f8f952ea9bc48baed8d9849374"
    "pl"
  end
  language "pt" do
    sha256 "e226f517dca38633fd82a164f58ad37f7170ab47f92d50b5ab6ccae5eec98b9e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8a695761f4b129cb6e399bdf970c770159504c0128e1f8d41bf414324fa93367"
    "pt-BR"
  end
  language "ru" do
    sha256 "b979f69a50ad7ff170a1040f70f2fa7a67f73aa920ce4d1d90382ff7449cdb23"
    "ru"
  end
  language "uk" do
    sha256 "1146c352a26b60b328eeec1b65532089f98cc968dd20ee0b93fdc31e1ca9302f"
    "uk"
  end
  language "zh-TW" do
    sha256 "15dbe093d3165869f213424a7f5cdc6028261679649bcb1d28b1ab568daa1e50"
    "zh-TW"
  end
  language "zh" do
    sha256 "c0aa522641b6cfa0d736b7df6bae4f47d71f0b176dfd023ea674b806734c458e"
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
