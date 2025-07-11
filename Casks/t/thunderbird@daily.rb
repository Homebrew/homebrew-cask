cask "thunderbird@daily" do
  version "142.0a1,2025-07-11-09-41-24"

  language "cs" do
    sha256 "80f53270fa4f53afc8a73511c65ed420154ca9eaec3ce56c132a91f8dd6f8485"
    "cs"
  end
  language "de" do
    sha256 "a152703146cfa52b616ae721f22c3b78cd7ce4e7222a3c54767326f68b0dab52"
    "de"
  end
  language "en-GB" do
    sha256 "06d206fb50d787c994dc9dbbb01b4d483a46431363f35735ef773c1bd0b988bf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "674719e2145d0f6381dccfdd363351600c1182cf01bf932384a5ce2ab8293333"
    "en-US"
  end
  language "fr" do
    sha256 "7a5b45f2925ead42e6fc907521f70511681a31dc6aa9f551aed01a2f6cab1478"
    "fr"
  end
  language "gl" do
    sha256 "b6d865415e3d0247236ce089bd5b28782e0ce34b772984c6ebd649ab1af9dedd"
    "gl"
  end
  language "it" do
    sha256 "cf7abc5c20f9925f6b45d508ef29ade065ccbcdc138c6cf1e905a827015f9928"
    "it"
  end
  language "ja" do
    sha256 "ff9f1a6d56e990202e6fe9f6caa7b7fb55efe7fe9ad8da7687e4bd9529142b16"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6f4dcb7c8bf827f72b7dd5d3a1df9045cf8a65704e6278d9eae5eebbd0c5c926"
    "nl"
  end
  language "pl" do
    sha256 "bdd84330840a372c84aa390079362c2bb47d39ccb4e75ad73874a62db94ae973"
    "pl"
  end
  language "pt" do
    sha256 "37fe603bfb1d6571cfdbbc84c9a194858c205792f20b53bf9863972d2b347837"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0fafd5abcc60d80841b4a84f3c6d36b0ed4092b5d161bd00e73148d9274de620"
    "pt-BR"
  end
  language "ru" do
    sha256 "ff88a6a0f9caa0459f1355bf5337500b5a4fe06b92195b981ef2a6ea51929c50"
    "ru"
  end
  language "uk" do
    sha256 "cd9c7622e2a7937ed9b8f84be4318ab50c6d44bf3b59a9365ab50b3e62233e52"
    "uk"
  end
  language "zh-TW" do
    sha256 "11b7243e450c3f2620366272ba7379c3654af91ef11bc97135a0b35071495847"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd2f84f25b368e8609f3b9898bec731c6b3008638f6ac8bf344434cc64a787f1"
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
