cask "thunderbird@daily" do
  version "162.0a1,2026-11-10-10-12-55"

  language "cs" do
    sha256 "479cb9ae1e6ecac00c5078ad90e90349bd27b74efa67e6728e8c0d188a3efb1b"
    "cs"
  end
  language "de" do
    sha256 "0de22a110eaeeb4f5f43b1f2548f26edde84de446d0d50359753413e19e5c9a5"
    "de"
  end
  language "en-GB" do
    sha256 "e0bfce15d5c381764ff5957eff81394f02f4898b3e2908ebe1fccbd4ab368188"
    "en-GB"
  end
  language "en", default: true do
    sha256 "260d20112c45e0246986fede37ae352dc8abb0e10fc5255e0fd8d19a1a194566"
    "en-US"
  end
  language "fr" do
    sha256 "b70740ec29b540e36b834dfa34d75d42196883c6ba99106e48a609eb2bd945f2"
    "fr"
  end
  language "gl" do
    sha256 "34093148e903ff56c22983b28be5d3b024205fbb4d6c53a551eff28a4195fe5f"
    "gl"
  end
  language "it" do
    sha256 "a79a23a1674231506226f06ea09a74fff85eae99f875a53fe8c50d9bccb4e01b"
    "it"
  end
  language "ja" do
    sha256 "d0ce5ad507ebb030210f54644f58d21e7137c0fc33d4022297ea1963271768cc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9fb2b963e6bb21115e1ba70f9a55719bdf934699791a3dfbd9d40e893a10c3be"
    "nl"
  end
  language "pl" do
    sha256 "9eef3bb42a45f32230e7fa5d7bc03a30f8f895732135320d7f39f5a767981b8b"
    "pl"
  end
  language "pt" do
    sha256 "a0f34292cec4f2960cae9ea83bb2da9a6c2f8a2ccddcd6c2feee216d44a6abc9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "538b508b29141c69980ea4956a9f163c1158767e1892d15e34be2d53ec8d3083"
    "pt-BR"
  end
  language "ru" do
    sha256 "6ca09240b48f159da80ec1c30b0ef21843beae5e3aa6f53b6dc8a0a75b6163ae"
    "ru"
  end
  language "uk" do
    sha256 "3c13eafff8ec11c5679992326d67d3d44cd2b092844bf746ee9f0e07068bcdab"
    "uk"
  end
  language "zh-TW" do
    sha256 "30f56205dc07a2c0017d9e11042cdf731e7cf1ab0108c62c3f000c25215a75c8"
    "zh-TW"
  end
  language "zh" do
    sha256 "724ba318760da7b66244852e758ce8b621281681e8d75f5a15e870ff1cc74bb6"
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
