cask "thunderbird@daily" do
  version "140.0a1,2025-05-03-10-28-32"

  language "cs" do
    sha256 "19095776a4371b841cdf8292e175216219181cd0346afbde1cf8104e15b8d075"
    "cs"
  end
  language "de" do
    sha256 "cac407a0c04bd0b1083697c9967f13d7edf0af24c0d8b6b3a0fba665827fa272"
    "de"
  end
  language "en-GB" do
    sha256 "753d7c6390b7ae471b346f31774327dcbd40bee0d8ce52f10051db9f7f40acf6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "38ec6d4fbacbbb48d52316a7f765d581afb63de9593bc6d251aab2630e4958b3"
    "en-US"
  end
  language "fr" do
    sha256 "d3f2712b22b2b9ecb3763d15e8ad5bcd468de4b85e598a64ca3fac7061400358"
    "fr"
  end
  language "gl" do
    sha256 "6494e62b4cca8f2416df6aeec65ed7401ff74c05240186ccbd534015a8f4b69e"
    "gl"
  end
  language "it" do
    sha256 "954afba05fff4e707772fdd3d4cf63f71df125875ee4884e4b0ceb3aacae8ebf"
    "it"
  end
  language "ja" do
    sha256 "c2fbd2765dda66b333d747bc874381cf7b2ed7e5e448299c5aa8ce0500fade25"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9750f9e8f2ac7eebdc4a79cb3d5adadcf31f573194b7206f7c6cdcc6c7e44fe0"
    "nl"
  end
  language "pl" do
    sha256 "742caee83fc0713ec22eaebfd1b97c470847b894198cd67d928b650b60e92623"
    "pl"
  end
  language "pt" do
    sha256 "c33021d8aee48647938763a7e9cf17cf9781c5d1e166e1ddfd00687946881284"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "88eda17a1031bc7e94b3d9f56a34553230c163945b31a52fb87f470d8f3fb5c9"
    "pt-BR"
  end
  language "ru" do
    sha256 "7e55053850fd9f8d12496219605165f32b5e37a2526e49a2ab7841fcc8c5b2b4"
    "ru"
  end
  language "uk" do
    sha256 "c72f78311c2b0c39b8717ef6822e369047ddf362b5ab4d1ff63ca400d5eb64ca"
    "uk"
  end
  language "zh-TW" do
    sha256 "697d9abe202f5b55b7127e12e9228ec942cedfe5a2a953f491e17138129d01d5"
    "zh-TW"
  end
  language "zh" do
    sha256 "59e802c8b19488c6cabfc15fc3e62d43feb54fef9e993d61b6f463f09786cf80"
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
