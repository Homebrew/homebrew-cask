cask "thunderbird@daily" do
  version "146.0a1,2025-10-18-08-05-04"

  language "cs" do
    sha256 "dc0bacf9b3353755932930176bdc0c966f70be5670b08815b66932dcb417dc13"
    "cs"
  end
  language "de" do
    sha256 "9f5b0f3d9084db0d6016bbe05044cec5828e24b21556d5e85214b9e95b4a7bfa"
    "de"
  end
  language "en-GB" do
    sha256 "eb3cf3077137e65536b9f8290f6dcef2fc23bddec5e48eeffa80b055ff06e600"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d07c9aa70e246fecfb96c32b4ef079f7311485e0156e8b33cb80dab650e315f7"
    "en-US"
  end
  language "fr" do
    sha256 "b4df8838769c38bbf3bb272964a2b1bf40484ad37bf9702830b1c78d90c2ada3"
    "fr"
  end
  language "gl" do
    sha256 "a1123ee8ba5f8f7fb071dbd4d2688b8d907323054d211b38e77e28438705cccb"
    "gl"
  end
  language "it" do
    sha256 "a00b8db5783ce6f1ec8f79a102072f1aec6b3369a8350457230fe6f1b37c552f"
    "it"
  end
  language "ja" do
    sha256 "b9db2c57a26c839f2f389e74849c1d8d3d19e246aff14ba6f5513f6ad431610a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "94434964e15444a7d53beba0aae53fccd341062676fc820b1d12df8b82a84457"
    "nl"
  end
  language "pl" do
    sha256 "b163970c8dbf306f45de65eef7acb3321d2e36e9d83b6339e7938992b5ad9c7a"
    "pl"
  end
  language "pt" do
    sha256 "528f0d2a6e07dab39cdb2b80d97456271fe9dd1f351ab0f53c28274aa0c40dfd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3d16ab607a8a71b457433f88527ebb170479ac0f5739bc8c32e12c488c5e2f9d"
    "pt-BR"
  end
  language "ru" do
    sha256 "8d138356b897186eec5d07f39ab31f54347b6e3462f73b28274ee97499dfc95d"
    "ru"
  end
  language "uk" do
    sha256 "cbbfdd6a65d3c94ecd7d281ab83859b903ab5428cea2a79739694b3b32573d7b"
    "uk"
  end
  language "zh-TW" do
    sha256 "d7c67751182a067feaf71038d213f22d0c90ec34e559ba0fb87691efbb8f6515"
    "zh-TW"
  end
  language "zh" do
    sha256 "258a667012c578af7233ff7d48ff8891b704eb12d7356ca7a6d73fe2dd4d7bd5"
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
