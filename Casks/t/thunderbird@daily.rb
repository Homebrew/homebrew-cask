cask "thunderbird@daily" do
  version "140.0a1,2025-05-24-10-36-19"

  language "cs" do
    sha256 "6f9f395250e9474db6eead690483e12041a0100158c2fa93a736b2e4690eecfa"
    "cs"
  end
  language "de" do
    sha256 "4e9324e215ac6386993a36c3d887e9240b75c8f3047d7d1d3b0397226fde37f6"
    "de"
  end
  language "en-GB" do
    sha256 "550049a41731c41cf067b48d0d78da33183d6a21788fa2e6c99eb5cb9d399d9f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "36d743a5295db0701f2275034abaa0098f79f9c8db88271eb12790bff943b689"
    "en-US"
  end
  language "fr" do
    sha256 "e022ecedbe3d1a401ed2634fe9a3e65b39f33bf5092335b9e18ac5f2081d1ef0"
    "fr"
  end
  language "gl" do
    sha256 "ccace8d00a89ad34771300ac92785583d0ad6a3368f85f4dfc1ea67fad5adeee"
    "gl"
  end
  language "it" do
    sha256 "b1c6c5bb457b3cf83a022a877546dcbece75bbedd814197a60fd4d6007dc4f23"
    "it"
  end
  language "ja" do
    sha256 "0864141fb9c91cfd32371e92ed16d18a3f867d37a735b9cb3131eff36676522c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "65900665003fcb511f4cddea342b8dd198ed58baa91552a03bb22ab60d15d6ab"
    "nl"
  end
  language "pl" do
    sha256 "458f0821fa04edb539bb874e92a8938ea69a790b5bf35f014dc5480f8f57a7bd"
    "pl"
  end
  language "pt" do
    sha256 "dd1d3512a35efac823d4e4e5da5b8b207c4617e9806c19ffb0129f98b93d7b0a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e3c7a0b9315a165e1407fc44fcb9bc1d194ec8ddf51308ef8839d587f05556d4"
    "pt-BR"
  end
  language "ru" do
    sha256 "69cb85972166c47bf04b4b1508040441b88c023ca80a14b2f5029b9feddb1476"
    "ru"
  end
  language "uk" do
    sha256 "6e02e97ad5c1e6f74f63197a8cd4ee10fd8afd2142fdb19189820a9ca8cdc1a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "7dca444759247dd716c3ec90800fd2279a2991fca6caa3614bff45f793b783f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "9535997575db5954e2845e35e675794eefc227cc9381fae3aae0883e45e5d361"
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
