cask "thunderbird@daily" do
  version "149.0a1,2026-02-10-10-49-01"

  language "cs" do
    sha256 "f336203f28b8aa1de9b2264e19765af226660ac1577c35b4f52dd21e2455dbd3"
    "cs"
  end
  language "de" do
    sha256 "e28f7650dd8626bbc77461ef161e1d412188a55cad0023603a78db4aa5bb222f"
    "de"
  end
  language "en-GB" do
    sha256 "26c185cb46f38d7391ef85c0b5b40fbecee313de99dfdb638381c2209be2ea7a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c9a59f3089c9dfbd7e455cb070d6a989b313ad7b340b83e949dbb5f5e704ede9"
    "en-US"
  end
  language "fr" do
    sha256 "a6c90d5a5cf1aad8cdc722c3b874ba3bcaecfb75fdee61d618e0b78ea82f2758"
    "fr"
  end
  language "gl" do
    sha256 "1319711abe50399fff381382285cbc233b7f67fb749e032a0351c8bf6a843220"
    "gl"
  end
  language "it" do
    sha256 "46c28bacda34e4a7a01869ccbc92bf39a59bf2980a2776f22a3b619641b8844c"
    "it"
  end
  language "ja" do
    sha256 "ad168c22dc7cf99bde721e8f5e3d705e05f1fb1e41fff2377ebfda60e1b1ed5f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7767562d264c37e432348fbdc8f8c8cdcad4d03416dd7b6b8e33d764ef08b92e"
    "nl"
  end
  language "pl" do
    sha256 "fc1f49de7685649d80c6b5975015220430734342edb04050f4cc2184aa56ca14"
    "pl"
  end
  language "pt" do
    sha256 "1891e0c79f5a998374820191e5bf98918e89473acfade36c21366e79cd5ca359"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c9c627fbf93f7f167b574a017432324741da2bfa760104d00f205685c09123b5"
    "pt-BR"
  end
  language "ru" do
    sha256 "f30a704f99dc564f79fccfc2b0d141f21b3b488038d197bd9284dda1e09e51e6"
    "ru"
  end
  language "uk" do
    sha256 "3eaab38cca01cc24736525920dd92e87777c5e2ab43555908169fdc9a5c900bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "8bc2dc9784c6bb04e02c3bda7b09fab3826773e868e205702b7a6d92e8aa93fb"
    "zh-TW"
  end
  language "zh" do
    sha256 "0a28a1ca3f1006b2a84caddf73befe526bae0275a5a44125b8b6ae463cba163e"
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
