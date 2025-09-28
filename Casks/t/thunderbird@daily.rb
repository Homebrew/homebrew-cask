cask "thunderbird@daily" do
  version "145.0a1,2025-09-28-10-39-04"

  language "cs" do
    sha256 "78b36b7d7a94e96c7e0ce8cb4bfd8675e0de4f21c18de459bb837dc81bfb2913"
    "cs"
  end
  language "de" do
    sha256 "235b57791b5a24fcbff690cb1b1740bcb987ce129e6def915b67b7f7fb020a22"
    "de"
  end
  language "en-GB" do
    sha256 "22be43943ad4a0bba88123495475e745958f947e6865e53b28e9e5e95f8868ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7f69200fcad9886fcb17fda427a537a40fd514b05d7268f636e3246f93f08306"
    "en-US"
  end
  language "fr" do
    sha256 "d17f91773f7cba01f9cbfc1fb558a9b0274af7a76f3764e29e3c4893e1f8981d"
    "fr"
  end
  language "gl" do
    sha256 "ae244705010f39d0d3756e55fba436e488139c48ea3878539b48de95e6658cf2"
    "gl"
  end
  language "it" do
    sha256 "7ffa2bc234dd23393615d37f7915bd3d5772ca0bda80689ead5e8cbb5694109b"
    "it"
  end
  language "ja" do
    sha256 "d4199c4dee165b84a89ec1635a9521aed9a20dfff247bec8cd69132e4f0753f8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "856abb39c5eb1dac6d4f0bdc8316867072f90a76a81da303ae6d35d64dc95a3d"
    "nl"
  end
  language "pl" do
    sha256 "22cf49c4bc1d59b0d29a8454205d582bf52134488db1a8edaa4252ede67b815a"
    "pl"
  end
  language "pt" do
    sha256 "1db46b53dc4c9e633aa62fcb41840765f063803f8828031e453c21d2c913a532"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "46e3d201e344bbe369dea9a6b213fc4c1b860485aa0ea29ea3d1b0351c55b959"
    "pt-BR"
  end
  language "ru" do
    sha256 "fc4124e47ba1851dacb3f7530b40cd12c33a919819ac3087dd3f31f4ff381665"
    "ru"
  end
  language "uk" do
    sha256 "c22f10a9dd1e55f5462aa59f2fbc3a70109b8fd6def4efb45c5d75bc7c6fb779"
    "uk"
  end
  language "zh-TW" do
    sha256 "575e6449928aba4af863b4285c9f8501347f721c15d065862eb90d5e593a22c4"
    "zh-TW"
  end
  language "zh" do
    sha256 "4e30193fc273418988d89132b576f2482d3f2cec3d150025fea72a0716d0e4d3"
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
