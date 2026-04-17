cask "thunderbird@daily" do
  version "151.0a1,2026-04-17-10-36-45"

  language "cs" do
    sha256 "897fbda386e7fd9427bec2198cc1a5c29835908763bfab2ff293bcf3c39a1032"
    "cs"
  end
  language "de" do
    sha256 "1751545cb385e80611722757f1a19eb57773b05cf25db88ea3f0b7b0ac778718"
    "de"
  end
  language "en-GB" do
    sha256 "6e6762ea74e0254994118177211b92ce9a44319a5680625a2037cf9e64453e86"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ac7178f2584ce864bec77e457faf3cff41d3bbe370a5fcec5ff7534280daed81"
    "en-US"
  end
  language "fr" do
    sha256 "4ffd69f192f3ae370143642b898a6a96b871b8fec1847350d19d7d6ca8a0d4d6"
    "fr"
  end
  language "gl" do
    sha256 "5d881a7f4311f4fdaac2b4b31a2be10fbd083e174cae8b1b3d3263ed5ce679b9"
    "gl"
  end
  language "it" do
    sha256 "d87cbd49e23bc2ec1a5ad4137bc679f25bf6b24a06ae2d9bdf87dbeffe389248"
    "it"
  end
  language "ja" do
    sha256 "5dcdbbd4df8c2986332bf2f05368b8637066faee67577db5d4332b3ad44e007a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "09779525f8eeda9afae5f8e202ee764022a2cb420b8df857c364f21d6d7b31f5"
    "nl"
  end
  language "pl" do
    sha256 "8296631c67d28835769dfb7b41a15440b6debf68e03fe23a0ceb5b57e6bbbc7f"
    "pl"
  end
  language "pt" do
    sha256 "d4d7be73385bc73d26f371be1ab02ca7fa0c64f2c313265b7d9a1953d39629aa"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "817f59181de7a8f1d3f01316270d5745cb271911a2291687202bd590c996daa7"
    "pt-BR"
  end
  language "ru" do
    sha256 "ada2b3387520cf996f7f3e86a74ff53e1417ae3f2c5b994d9210b3f2929ece87"
    "ru"
  end
  language "uk" do
    sha256 "1e73f10dd946adf70c3d35ec7833a62b4f4206439b28d9dc1e26b657c3e28b10"
    "uk"
  end
  language "zh-TW" do
    sha256 "80036eb115fd30c3cc205855e77f00bf499f66fbeb58a0124d7e6b9a77bd6088"
    "zh-TW"
  end
  language "zh" do
    sha256 "535a09bac96162c0cd9d71d68fb8216943c0e88c1e59369f2d5713c2d7125873"
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
