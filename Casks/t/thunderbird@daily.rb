cask "thunderbird@daily" do
  version "149.0a1,2026-02-03-10-05-46"

  language "cs" do
    sha256 "dd5b4e29a5c7481764a04201485c8062dc1c7b8a6abbd7ca3b6433581ae460c8"
    "cs"
  end
  language "de" do
    sha256 "07949a74d048d240d9211d347e0f643583f5b7c1b0a765140a31374854fdd6cf"
    "de"
  end
  language "en-GB" do
    sha256 "5876667c3f82ebf76a6584ea20fb1a0bf3a92850bf8e6e9522d0bfe4edec5f94"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b9d7eb5a2ff91843d3a462e0a8cb4ed65bbd31a8bdf36aef271186b7f6ff8332"
    "en-US"
  end
  language "fr" do
    sha256 "dc8a55dc68e848423c5e2707374fab3f9cbb93a0a22e9119f7ffd54bfca20238"
    "fr"
  end
  language "gl" do
    sha256 "869c893c426232118b0ad272b831ae8f1083eec076a0a62a5c33c43f9b58337d"
    "gl"
  end
  language "it" do
    sha256 "d4a891c933e7293d8a153750b184451fed4f469adbd05aff570ca99aed84e971"
    "it"
  end
  language "ja" do
    sha256 "63bb6b6685ad26e2cd881b9b3159882784cc063ee5cc453822f5e53eb28c1bef"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "00d35f0acdd5a27510bb5297fa6d98b4df367e1d460af64a8ba0e1150f945b4f"
    "nl"
  end
  language "pl" do
    sha256 "03d60b255bfdafd3495d2aa17bdca88790b9e6fbfd7fd16686fa77c79a3942ce"
    "pl"
  end
  language "pt" do
    sha256 "0a436067e1722a969da96e8fd58e5f85efe1e2f335e55ac07d13a251dbf8e958"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "453e63079a229aba7659c29f957b2fb0d6b1a656cbc7ca75c50013c945ef3980"
    "pt-BR"
  end
  language "ru" do
    sha256 "62ec47390b30ff4be32105b6ff29a455e68b3a3168122b4f9d08bf553380bb5f"
    "ru"
  end
  language "uk" do
    sha256 "a310eb4f0fa3157376e12c4cb0303377e8771f42f7378d0776535a9a9d9b8e7a"
    "uk"
  end
  language "zh-TW" do
    sha256 "877b9ccfb62ce7ddba748cb93ec6029dc9c79556b21019714f003ee784b70078"
    "zh-TW"
  end
  language "zh" do
    sha256 "7eae229412d168535fa0d4113038aed1fafe05c187a99f27ff84f09990d69059"
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
