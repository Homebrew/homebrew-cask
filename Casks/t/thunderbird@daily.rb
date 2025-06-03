cask "thunderbird@daily" do
  version "141.0a1,2025-06-03-09-58-24"

  language "cs" do
    sha256 "e5d8d937363a69ed92c9d97a6cf3a51b4a79523dc32fb232ae214f85556f0117"
    "cs"
  end
  language "de" do
    sha256 "5caa4753369c4dbbbae2745d9b7ece59fd1ac788f3c9609dd84ec51ba25ebe06"
    "de"
  end
  language "en-GB" do
    sha256 "e8942ce9f40037c273eab0d81924a4e847f8a933779eea0b835ebb3038ba484f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4b2f55b1c4322bcf18272f45d4e9d5f3b34e630f11cba29fbefda648bc4eb6bd"
    "en-US"
  end
  language "fr" do
    sha256 "b4ed1e38a278dc316618e2fd4c47cebdc40502feefb1837ffb056d6e65bbfcc0"
    "fr"
  end
  language "gl" do
    sha256 "a3b83025dd56effebaec589d2113e648ff26c80a12b8ecef486462024da98f96"
    "gl"
  end
  language "it" do
    sha256 "e5f4a6cb9c6f281bd353bcb0718deb0b1fa053bb42c003f19906a8dcbeb4fd8a"
    "it"
  end
  language "ja" do
    sha256 "c8c70407f641fb3a84865b1d863c043d5b2df48f4cf0e08514a8657e3ac226c3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "06f9f99df9256c2cd3ca6fc0066c66643669c9c6476fd5ee1ce8af4e5a32188b"
    "nl"
  end
  language "pl" do
    sha256 "b790629492ac8527f3e69c3d30199a9d2ae0359615ccef365bda400917c25bf7"
    "pl"
  end
  language "pt" do
    sha256 "cdd5dbe3751d8468ab6335d6dfb3c2fde991a665e36a75706a65bacbbd032274"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "12b7168f0509489ce310ccc36b8d85b6fbbe7a6bda00081906e332cbc5040b4e"
    "pt-BR"
  end
  language "ru" do
    sha256 "0f2394b7216c880b76adb056530362b703e192fc11b1a71605c576ee7db8c756"
    "ru"
  end
  language "uk" do
    sha256 "e30114c8e03a4c3fe0cd02eec807b2cd6fa692a204cbeff30e4d8cd629b0e9fd"
    "uk"
  end
  language "zh-TW" do
    sha256 "815f9ecc03a255ae1cd70a3727e8035f15c83eca1b33643136ebffee06c07557"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf30dedcbebf9b5f96c739b22f40397b633a7568f00624aba34775a17a357ad0"
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
