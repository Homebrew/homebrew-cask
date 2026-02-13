cask "thunderbird@daily" do
  version "149.0a1,2026-02-13-10-25-00"

  language "cs" do
    sha256 "ed22d28eda97123f24e6c587e3805b5945020fd460a278d3085365d658dd6991"
    "cs"
  end
  language "de" do
    sha256 "660ce8cf8fe0da27955a0f92fde773961e5b456fbfcf41a087bf56ef91149b7e"
    "de"
  end
  language "en-GB" do
    sha256 "755b5faf7dd04f4b43144bd3bac34e4bacb8985bdba9907cceda622d3da39191"
    "en-GB"
  end
  language "en", default: true do
    sha256 "418a07a82ff7884676a48843ce2b144f36f57c3e306e55fb87e716db1a25d6fe"
    "en-US"
  end
  language "fr" do
    sha256 "97734ad3622fbe6d27e3e8140aa97df0cd359206d6df6c765d0566d54f1bfd04"
    "fr"
  end
  language "gl" do
    sha256 "57ea8bd76ac2746dee36cc3d4d6e9ad95e04f439f73ec791d4d8d042f8d929bb"
    "gl"
  end
  language "it" do
    sha256 "28cdf224ede321333a6a9df2e2c2d5f80fc67eaf351ecab7bc5ee28a05f34d5b"
    "it"
  end
  language "ja" do
    sha256 "fab1960f00fe7b07bf2bf49fa3adc536719e9e99283db976db9a084ed8df0679"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dc4ec1e854496cd6e66cc82f94c40d0997089aeee7341329935a9f4db5ace866"
    "nl"
  end
  language "pl" do
    sha256 "2a14af3ab0d61058bb90d2e3ece4188b3344ff0e7a4fb99c478cb7f471b672ed"
    "pl"
  end
  language "pt" do
    sha256 "6b72f132c1a5b4f6979ac6e2c578c08e3d1f430e0abc8169869d5e5f1b80c307"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a77bc66959f727d2a6e215696c26c942854f3ef032223cdd31fd34b0c057c9e1"
    "pt-BR"
  end
  language "ru" do
    sha256 "31922f6fe17b685e3b2711d378ffd6e1ee3cf7ecbfd163c2024fecf9e2d23a4a"
    "ru"
  end
  language "uk" do
    sha256 "e040d0f52feffa26fc48bc7ddc3bd743ddfe6c2e31a6fbde196ce7530aac071f"
    "uk"
  end
  language "zh-TW" do
    sha256 "74dc230a1d1f5bb8fdb8fd15696d46f1a78c80631eb0d4ded48db034be03a100"
    "zh-TW"
  end
  language "zh" do
    sha256 "94ecf1a48fa14c4c9149f2bbdb06584511f0aad343ee14c6e3f9fb7c7d4ec537"
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
