cask "thunderbird@daily" do
  version "161.0a1,2026-10-25-07-52-10"

  language "cs" do
    sha256 "32aecd42ca7f57ff9fa5c4e877df7c5bc6370f694e9660783a36da7e164e7ab2"
    "cs"
  end
  language "de" do
    sha256 "0f2f0582ff03a6be9cd0fdc266eedb2001b3378a6b514aae7e22931061f5612a"
    "de"
  end
  language "en-GB" do
    sha256 "9056e46c358baa887cfdbdbd7bb03d5e98f8e46656cf2640bb5e711b18e8da43"
    "en-GB"
  end
  language "en", default: true do
    sha256 "82eb2bae09b828b404f82c1b91c8eec539505aa2326e97e411573d4e0de3a6d8"
    "en-US"
  end
  language "fr" do
    sha256 "b435017021799054a942cebe446b3a1535fbeffa9652ed5eda843825edde1025"
    "fr"
  end
  language "gl" do
    sha256 "d606a97c59813df7342195abdf70928e90bb51b604c73205c849bac45a97c03e"
    "gl"
  end
  language "it" do
    sha256 "0336a82abe012a89a0dc54748989d48823537ab54b8462560b3c4435daa750d4"
    "it"
  end
  language "ja" do
    sha256 "a14dc44f29b293093beeb0be303f295b306b03e34fdf996abbdb964e88061669"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ed529de89d98c18e4b778be8e7843be0320a4a419d63279e615da46985c0b2fb"
    "nl"
  end
  language "pl" do
    sha256 "ffbd312aa87dc90b782577e8762d32d764f28430a1c4d44bc73a6172cf47f529"
    "pl"
  end
  language "pt" do
    sha256 "7fe56992c172a56f56c2ca7c30f94a9afdf6c8571a06c309f064a1011816dcbd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d0a5d6c4774e523cdf08c8a41162451b2ee23b83dc5347842ebaa4d46bd60835"
    "pt-BR"
  end
  language "ru" do
    sha256 "a930375e35429ee79259fa78d3cf1fd8023191d20d793bb6abe814c283ab3665"
    "ru"
  end
  language "uk" do
    sha256 "b239096ae8add649d654311482935da096671c97718c93f58a7eb0cffc617181"
    "uk"
  end
  language "zh-TW" do
    sha256 "b58101dad4fcdff3cd3b10286a3480ed491672d14dae8dbf7ce5f098032717cf"
    "zh-TW"
  end
  language "zh" do
    sha256 "3e7820af6ec2e7be62a8c597bc24ccba0a21f3a6d06cd133699b573521dac3fd"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
  depends_on :macos

  app "Thunderbird Daily.app"

  uninstall quit: "org.mozilla.thunderbird-daily"

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
