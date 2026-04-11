cask "thunderbird@daily" do
  version "151.0a1,2026-04-11-09-58-19"

  language "cs" do
    sha256 "4f3045b1238da04f47ca0ceb2dfe5cf4993a8cf7ed047bae545ae17b94724abe"
    "cs"
  end
  language "de" do
    sha256 "9f2296b43727f646c8714156ebbff8b51903caf3ee0e16408d85bf6171522009"
    "de"
  end
  language "en-GB" do
    sha256 "df1bf16cf6a61b42c83590347b5faaddf3b352a8750022da23976973dbf7383e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1ddc027537a5fd370569e0da88a5697775adff6e11d6a8627c001d29b5cd454c"
    "en-US"
  end
  language "fr" do
    sha256 "930614b6f39f3b883e3191f7fca6396cc1ae7a3835fc2ad0beed4b56eba78960"
    "fr"
  end
  language "gl" do
    sha256 "e7a4a909798e22bda11e7029f995969d74d7bc6ff4c5b575cda8f5ce17cd62ad"
    "gl"
  end
  language "it" do
    sha256 "cc4488120479b4ca8bda5acf587455d2d604fc73408609b50d86ccc87db0c2b3"
    "it"
  end
  language "ja" do
    sha256 "b1831a99b48876c41b9bfbfd283108a5a8c74c2e0ce491f6a5d93cb36c603d52"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f5828a10d9915861da29201c04b45f7722e0dd11ff02d4a1f8e06ce6aaad9d4f"
    "nl"
  end
  language "pl" do
    sha256 "3525ea8fc57ac4c61f650348c765c2cba8975540546811bc7f27610a8327408b"
    "pl"
  end
  language "pt" do
    sha256 "15d688ff0799b107f98e14ffbf5fa0439011ef527239a153d7350b6afe9af1cf"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1a802872819002fae613be95308c4792fbbbf8c2cbf43ff9dc6ae0cf7df735c1"
    "pt-BR"
  end
  language "ru" do
    sha256 "921ee6d0e2621c5b89e69f3d4a797de8b3395f8971f8ac7dfe652227b3a900b7"
    "ru"
  end
  language "uk" do
    sha256 "1463dcbeb3e27e76a0fa116e7f6d8ec3b8bd9f6c77b98217f81d1d7d248101da"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a81cee4458f7ccf562dce8ff8d5dec36fd80c0573fb3fa01a7da346c38df81f"
    "zh-TW"
  end
  language "zh" do
    sha256 "e5abaec9786d5d7ce3c4e6ded4b1940725374f76bdbc27438d5c74456c7b0ee5"
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
