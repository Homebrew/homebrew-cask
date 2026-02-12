cask "thunderbird@daily" do
  version "149.0a1,2026-02-11-10-28-05"

  language "cs" do
    sha256 "f1e861609d0d463296aae2134144584b2eeae3f8da225ad1cc66a22cddd81956"
    "cs"
  end
  language "de" do
    sha256 "49a7b92a07e4c79d6efdcd3aa01f9571c5c4287f700171d3354da8577fd65f40"
    "de"
  end
  language "en-GB" do
    sha256 "8c6aaaf42bbc75cba307cfbc9583444eb0df5599b61b6ce9753721185f7bef09"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9aafd2f3dfdc4250bfaf11a46e8b93295bde36152bf9482e12fde85568e27d20"
    "en-US"
  end
  language "fr" do
    sha256 "dcabf2ee8ffd2dc832e30bfe55dd4e66ee4d0d5e8d31f3938d0fac82f33edeca"
    "fr"
  end
  language "gl" do
    sha256 "1d901c7848d6e48d6ee434f395751fd93d43394ded2c9c0a5181394a26c2c3b8"
    "gl"
  end
  language "it" do
    sha256 "c6780daf8df681d06cee000cb1aa11a5fc809b9ce6a99e844f368631d7e7e6de"
    "it"
  end
  language "ja" do
    sha256 "c3af0dba2ee87c7c03158c1f214bd46d5d9224f22e31978c8f99b78028cc0ef6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e9f1a5f1baa7d2dfc5491d94edcf3fa5fbfb7257849ca37d30df2bb5a847336b"
    "nl"
  end
  language "pl" do
    sha256 "1ed82e0675acd6208a92b047d7f7d4a828cfaba922101a2fc2f0ff29bed2a9ba"
    "pl"
  end
  language "pt" do
    sha256 "e3545d7ef496ca99e9f9ddc9a599150843757019969b7f061f39f14ecc392e5d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e5ed91175c9175a19593eec94c37140b36a7cb463fe73df18d7e367f6e6d7c73"
    "pt-BR"
  end
  language "ru" do
    sha256 "38d58311c292e222f01eaf7ed958de10e8c095df24bd8dd5a5faa44b0704167e"
    "ru"
  end
  language "uk" do
    sha256 "d8ea55b6d5728826f77864ce7823f7e0ea63f3b107dcd7c249db518a68e9d017"
    "uk"
  end
  language "zh-TW" do
    sha256 "33302b656113683f6f4c23c27b79cab905353f84cf715ccb5e1830053109f7d8"
    "zh-TW"
  end
  language "zh" do
    sha256 "1f5d3faa47d27122dd9b90f5b8f278e6d2c7feca73b0d7bf4e7cb07f0662a76f"
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
