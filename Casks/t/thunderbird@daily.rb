cask "thunderbird@daily" do
  version "148.0a1,2026-01-05-10-33-03"

  language "cs" do
    sha256 "e11dd85dcc9285f50a80e075bdb3967ef5565e6b14c72b3fd195a29bad3fa4e4"
    "cs"
  end
  language "de" do
    sha256 "9632a64811d2e764b9738cacc6d18f63213aa870002f9b8da72229de0b8eb4d7"
    "de"
  end
  language "en-GB" do
    sha256 "54cc6fc637acdc5d0286e1104eaed4ffbf944567eabb140b1966de73f87be741"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6676ae5023cd730482e95fae55ef644f296d4f8b975bb6d43fee5f4d6c1e42dc"
    "en-US"
  end
  language "fr" do
    sha256 "32813f1532436ab412aa495a5fc30418e91a8747a57fc0b1b11790261efb3e90"
    "fr"
  end
  language "gl" do
    sha256 "2a77c6d2a7e34398c892387b8c4f4f7cb27d746b66937863e4ad6ef74c904177"
    "gl"
  end
  language "it" do
    sha256 "1953eef9edff42c0b2a7d6d50d818ac83bc5f9402f5597981eca786b1d4ca0e7"
    "it"
  end
  language "ja" do
    sha256 "8cf49146f3302fed32f7ff7a0b89ae8e3cf520ba8d17eb60620c18cd4fa38491"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "68ab2f91a47b05f510df6fbabdd0f5ce7a1c1dbd8f724c243a3598dc8ffed60f"
    "nl"
  end
  language "pl" do
    sha256 "5efbfbc60ed2a08109b86d5a6e321ab777657f42b4c42f83797aa2545382ab6b"
    "pl"
  end
  language "pt" do
    sha256 "f5a7ddefca1bc30b34c2919130f7ffac9154efd31549841e74d4457da95265d4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ce087d048abdfbbf7265b3562041451baee3d3dc18f25fabf85ef6e6db2f5472"
    "pt-BR"
  end
  language "ru" do
    sha256 "61d511dde2f7f5204e4c6fe184bc56c8945018cc4ec1aa891f759738524c4d6f"
    "ru"
  end
  language "uk" do
    sha256 "305c161466a242a38f590e1601287e3f4b0ebcb0c7e4dc3f157fdaf190243b30"
    "uk"
  end
  language "zh-TW" do
    sha256 "71e067b0433952e9a03552aa533ba3d17d592b7764ca2a71f758eddc5231c78f"
    "zh-TW"
  end
  language "zh" do
    sha256 "4c0f0ff35acb1ecdc20246d0ca552008d4ecfe6bd08435e651235b500be734d0"
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
