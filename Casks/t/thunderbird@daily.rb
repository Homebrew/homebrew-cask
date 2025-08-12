cask "thunderbird@daily" do
  version "143.0a1,2025-08-12-10-57-44"

  language "cs" do
    sha256 "498bdf702ee885737985e9b7218239955fb486477c1701bfdf36923ffdbc7afc"
    "cs"
  end
  language "de" do
    sha256 "e9c8776e374826ea3a376c7560c20a60e3a631b5ce52560438a7102020f33a61"
    "de"
  end
  language "en-GB" do
    sha256 "ce4c7065574ed37d7283283a40ef79a3717f7d8d6f75dd91ce9ed19148b4147f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0b2fef5695993ac41b283d76db7e12c873cdb8b6c5903204141d3a14f3edc944"
    "en-US"
  end
  language "fr" do
    sha256 "c31f601eadd53ebf4dfca258e4be8daa9997a81726e5effab7d81bf94a10de1b"
    "fr"
  end
  language "gl" do
    sha256 "6fd7c0951b0cd7a857ced368387b8baeab9e7618ef8e19b0ba6bac2fe70c23ec"
    "gl"
  end
  language "it" do
    sha256 "3dd776f33845a49742d1f79f4aa3a9009996e39938f53298cfcae45697afdce5"
    "it"
  end
  language "ja" do
    sha256 "953737b2c64186bab1d66f0e2f7eb34784179013c8b4ae79e80b0239985bf55d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b8b2fb2a5a8da6fb74cb92738bc50ba864553b57730f320b57ad683d83a2fd24"
    "nl"
  end
  language "pl" do
    sha256 "d219e39ac1400c5dd79eccbd0db327e4b8c87eefb49292ff5bef2c39999c465b"
    "pl"
  end
  language "pt" do
    sha256 "3bac2769333126d9293ca56cb7fa66a852194d8f68a066e759f180ce8523e3f5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2a9ce1e759e0018a9b004421e58b79768085918a92ac5f217ba8f8a4ff4aa939"
    "pt-BR"
  end
  language "ru" do
    sha256 "53963ebf2a5e1c6bb9ac06b4b9711a7e5be56843bc6b4a11d3b51770babd5953"
    "ru"
  end
  language "uk" do
    sha256 "1534b19084d9b23a8e888cf2c88d2a4b3aba1fec382fde2baa02124ef9bb31ab"
    "uk"
  end
  language "zh-TW" do
    sha256 "466ebfd0b2d4107bfa1d4c60c3c2d099a7b05edfe7bd835c42090e8493e11486"
    "zh-TW"
  end
  language "zh" do
    sha256 "40ea589c41fa80fd9a6878557253722ae56607bfd383ea5e652ce9adcfd04871"
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
