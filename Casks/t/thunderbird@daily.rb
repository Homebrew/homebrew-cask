cask "thunderbird@daily" do
  version "141.0a1,2025-06-11-10-23-01"

  language "cs" do
    sha256 "96bca781337491a1d3e8dccda27891b4560014b64d66be5f128fa36bccbfe96d"
    "cs"
  end
  language "de" do
    sha256 "e3753ff8f13513b7e00430dd24f20b8ecf485bc55b1dcb47a7ba2a7a6f0d2d4e"
    "de"
  end
  language "en-GB" do
    sha256 "feb16a59349ef59993331bbe509eb6510e649db12c9b9b7042d9caa866e64af6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a9641fd7c7ba335b98a96efd01e5273a20a0ca4f1a47a20af356a42fe9186068"
    "en-US"
  end
  language "fr" do
    sha256 "8c5430c1e2244ed511f3ca8c50b7a818e00a72a8f1dd8added28ae7335811f6a"
    "fr"
  end
  language "gl" do
    sha256 "70f658a7e8e0c7dfd2c52949301ffc3b58ce1ae1d5e9f40e978c61811864e90c"
    "gl"
  end
  language "it" do
    sha256 "9f290cf19049aa31062ef2e24992fee18bdef91dfb7a6069f2f0c6b4d6a80552"
    "it"
  end
  language "ja" do
    sha256 "878ad5d3ff4d81c3e6ca9af55f0452e3b894c9d9684ef2878c22161038207645"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9498bcc99a8e8ed838983c4af7fefad2d6bedde4571af4337256f5893c754a8a"
    "nl"
  end
  language "pl" do
    sha256 "03f0aa01e7431ea745cb2b604865910f7c38b985c604b3811befccb96e44d2ae"
    "pl"
  end
  language "pt" do
    sha256 "b9ee82936787aeb29ff08a8eac62e462667fa2d25b142a7a46a171f36e2472cf"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d8d216b9858270a458ec7addd82fcbc91644c2af133e9009bdaa1e89bf25ac5f"
    "pt-BR"
  end
  language "ru" do
    sha256 "8eba5243b548adf84926bed460c6fcea94429c6e17eee42a2f52b1dd0fac9ead"
    "ru"
  end
  language "uk" do
    sha256 "e0588941bf655d1fa2760e0e4583b9dabc0a5e4b418b52ee1ff9e82d637e1a32"
    "uk"
  end
  language "zh-TW" do
    sha256 "056c4f5b844887062a02eae93c118ba7b41c2bcd3281af158c0ce46b4032fab0"
    "zh-TW"
  end
  language "zh" do
    sha256 "e6da36af02a95dedd339325e81eea27ee7c87ac3fe79aaedd7745dd1c5375275"
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
