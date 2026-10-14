cask "thunderbird@daily" do
  version "160.0a1,2026-10-14-10-24-10"

  language "cs" do
    sha256 "f6ddadc6df9ae3ffcf03ea5c84811bcfe207a340afc55cd9bca688bd92ff1a8f"
    "cs"
  end
  language "de" do
    sha256 "0783bbf93a49e8c79cfda18f1a2c7dad77e4c357122d4e957d99933a25fd0e02"
    "de"
  end
  language "en-GB" do
    sha256 "f7e6dfacb3ebcd813f7ebb29578052dc797dad6c527cf4ac236e9b413c355af6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb7dda7b8e025d483f31a3638c9f1a69b2c51a1d6f07505080088aa9a0e0c038"
    "en-US"
  end
  language "fr" do
    sha256 "a4ec3ba6a10fcd2df8e166d35d03b59a56d7487e600f60599554d28d301dba59"
    "fr"
  end
  language "gl" do
    sha256 "e93ffdc87b48e7905fbb56a8deb735c5824863a44112a2675ce970884b69415b"
    "gl"
  end
  language "it" do
    sha256 "36dfe5be2ef5816e0d87938cc30a1a6c6d2db6d90cf400b522f8b4110772f924"
    "it"
  end
  language "ja" do
    sha256 "604f014e575247fcc94d03ebc1df20a195a88ff912b3cd9fe5bbb1c4a9b492d6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f914b7e04644f7d67d99138bc2176deed7d441caad77eb9fb209ca2e580272b6"
    "nl"
  end
  language "pl" do
    sha256 "18e1a8db4fea1006f48b7968b67b102970824b748c694c1468b2af2ab1919058"
    "pl"
  end
  language "pt" do
    sha256 "1c2679e7863963c74ca47629edd7f88c5828050de057c5d880073b706ee70b0d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8da106aff6ba49cc8e4d61af4ae1d01c08b741a773a2b3fbb440d0db705456fa"
    "pt-BR"
  end
  language "ru" do
    sha256 "fb6ebe86bcf9ef827b426b9b308070635c6b353c53d0c51f66b59b35413e32e6"
    "ru"
  end
  language "uk" do
    sha256 "c85675e8c48935e378ee638bec814d2998ea2972bbb983ae2fd7be1739edd7a2"
    "uk"
  end
  language "zh-TW" do
    sha256 "b36eb551bf64d39067f5f89b8b929ca39594b97eb7752fb4cdc92850a27d3435"
    "zh-TW"
  end
  language "zh" do
    sha256 "e987215009ad47e494784a4a3db040768072544a2c0a6830b69f3b604de5e5cc"
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
