cask "thunderbird@daily" do
  version "148.0a1,2025-12-25-06-57-04"

  language "cs" do
    sha256 "38467487f70812e2927b8a41f29607cb8742909a77d620c744e7d70957e19bba"
    "cs"
  end
  language "de" do
    sha256 "4259f53900a10af913ca8e4f26f2852c8d65aa58104c62df4a7e9fae59cf1e20"
    "de"
  end
  language "en-GB" do
    sha256 "a3cd156b016e8cf7fd80b15f6788e2aa9858ab2e9ee776962d3346140a756ce8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "326d49d492ddea816ab15def10d1ec2586c507f0b0480972aeb82f8f309edf39"
    "en-US"
  end
  language "fr" do
    sha256 "238023ae9a3003ca17af9aac4c73647966a9cfa0fc56044ad403e4a9e81f51e7"
    "fr"
  end
  language "gl" do
    sha256 "9af79b8aacdc64602215e559f86cb8e95761efa375a195a0857484d515397de6"
    "gl"
  end
  language "it" do
    sha256 "b8634f4eeb41775cb12200e50ee54e0ed3494e9a3a4396860fb6ff28655039c5"
    "it"
  end
  language "ja" do
    sha256 "d4ec82b3e51ad138f066ee4db33cda1cf88de1b8c4d32b7a05a50bb1eb1e830a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "efb98e725a6bb0ff5324f4ea3e53c92c614776f1f0b9d07c729b23ed08af7f7b"
    "nl"
  end
  language "pl" do
    sha256 "9bc2885fcd87ab50a7f43494c1d3db2ce817e5c70c59a2b91336fc77940a8d24"
    "pl"
  end
  language "pt" do
    sha256 "5c4bb04ef7cc2155dd759dcd3e587803c1c613f929ce6ce1f992cf786ae42479"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "25fedc0329f4a09573b59b93bd69a5917037e9a446b1cbd941a57a7b3798ee83"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd651a9bc10ae3466b1f32cf28024e216839fa87fda2f75e67580d21bf446671"
    "ru"
  end
  language "uk" do
    sha256 "61f1353d60fe32b98c276f73c7bba26c6209549260cbd9285deb9419c1f188e1"
    "uk"
  end
  language "zh-TW" do
    sha256 "af761282dc5d2364e772bd4b0daf0b26b0ef4f9db5883afbfdd26b6d04915f59"
    "zh-TW"
  end
  language "zh" do
    sha256 "06769dc06359422acdd48d7ba31d2a9992fa3ae7628fba4a5ed1823015d58ca4"
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
