cask "thunderbird@daily" do
  version "150.0a1,2026-03-06-21-56-05"

  language "cs" do
    sha256 "a6f008b17901d85b6d0b8b391449661cc56f2193300d05018b468956b7df9de9"
    "cs"
  end
  language "de" do
    sha256 "5a52c112591d85558d51bf214548dff629d31dd3302ccf797f86d09ae8733ab7"
    "de"
  end
  language "en-GB" do
    sha256 "4b80a38b167845a75a2ea4172fc91557f327228dc30b2b33bb93aceb8e166c52"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4f16fc2807a3980efa9a62ae6ad28bca346832691dbf6105e8312263abd25c45"
    "en-US"
  end
  language "fr" do
    sha256 "237ae0635cd86194da1063504ac6336a6872ecabbe4b23e6c5c524ac6f442c92"
    "fr"
  end
  language "gl" do
    sha256 "58cb6965e4bb4fadc9cbd184f59bf114e91b7d709a67a2f8b32ddc9a1c97c63f"
    "gl"
  end
  language "it" do
    sha256 "6e2d0cad04886511dbac7dba3cc16a559cbf1216d278f3a37ab750d70825a074"
    "it"
  end
  language "ja" do
    sha256 "684d011de5dd6b5a219083cf15f7f39c535e53c5b3b5567c6f277f3a33342b08"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "80094814ba62483cc5a874af3c46639f0dcc82cdadb4875f19cb2b9ab1504280"
    "nl"
  end
  language "pl" do
    sha256 "39376f1dc0067554faf915d2986d6af09f10fa6af607774a4e458d393931a368"
    "pl"
  end
  language "pt" do
    sha256 "0e788a69ec95c87ae2b9cb06d3998e817350b7be00de3f759d306bbac45b1808"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d5f61c5f2402a8955ca1369a4868c07a54eb61ff58e81af39b8c195450f7aaa9"
    "pt-BR"
  end
  language "ru" do
    sha256 "b57a83dc175c2b0bdc4baf4f9db692e7465b0c51a0b932d2b48e8507dca1fcaf"
    "ru"
  end
  language "uk" do
    sha256 "2e70a24af53ed2b1818e9d94d7842b5890b342fb469bfdb00d9993dab67f9ea5"
    "uk"
  end
  language "zh-TW" do
    sha256 "13a55f3b3ae4c52df80f23a05971d5f72c13010d8b054c323c605b43fbc7bcd3"
    "zh-TW"
  end
  language "zh" do
    sha256 "62ebb2d41cd6e25f9550f74a9182cf42e96b2291c9920e3ef510272d27107ccd"
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
