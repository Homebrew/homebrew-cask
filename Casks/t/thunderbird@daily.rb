cask "thunderbird@daily" do
  version "143.0a1,2025-08-09-10-33-14"

  language "cs" do
    sha256 "2e610ef088a0d5fa07290a17292b27481e5e1f7012eec5644f9d0b1560947f56"
    "cs"
  end
  language "de" do
    sha256 "5b64d0c953a1ec64d1b8d856613ee48c17e842345c64e48132467b8c0e3edb42"
    "de"
  end
  language "en-GB" do
    sha256 "d8bac82f562c5cdc54bbb7de2e14a6dfee325187053b4b7b60034a9b6a1f1466"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e5f9f650f7efd7d8be7d459cd8a870e0270de33b76bdb6d083c72067b3a69870"
    "en-US"
  end
  language "fr" do
    sha256 "7d33f6640402fc456ea16f5941268ba71928b111ba7cee30111437699eb1fd6e"
    "fr"
  end
  language "gl" do
    sha256 "e5723b986d4b8c58aca5ba03f0763874d39b8fde2d98db30231c2bce02bb42df"
    "gl"
  end
  language "it" do
    sha256 "9642e5e0cd469817ec87b1fff9f6b94f5e6a5611eb42a46deaa1e0373f7c8d1a"
    "it"
  end
  language "ja" do
    sha256 "443620dc568dac2836d5cd2283074cea837ccf08eda7d73aca1e145c98514edc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7193e22567845b2d12bcfdcff1ee9d4db65d162a7be776a2af1f8b19cd12ec5e"
    "nl"
  end
  language "pl" do
    sha256 "055394d228a78aaebba8bdfd4f1dbf2c453310330c6729eba5ea2d4f82402e80"
    "pl"
  end
  language "pt" do
    sha256 "8281ba38afaf94c4eb0d0b92ee29f0e5c0e2f3d48616e3ee3bc6f9e5f517345d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "97e2b6073a113077bd3009e5098573c72b03e524f8663d88b2cb585bbdc04530"
    "pt-BR"
  end
  language "ru" do
    sha256 "9935297a756d247e4103c77b03d02824ecd55d5298dd11b3f0b01d930981c83b"
    "ru"
  end
  language "uk" do
    sha256 "f322c1707e620969ffdb769db6a0995f0f7ad6cbbc3fdc38c13d1a121d4e326d"
    "uk"
  end
  language "zh-TW" do
    sha256 "d716ae972322f6767e003492e8f0d535f430ac86f4594c06c3f535e73b06f343"
    "zh-TW"
  end
  language "zh" do
    sha256 "f462e04f5ac0b1ebf2efa7ab4e233730115234b4b89506b2dacd5bc0062cbca3"
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
