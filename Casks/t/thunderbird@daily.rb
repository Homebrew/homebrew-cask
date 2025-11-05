cask "thunderbird@daily" do
  version "146.0a1,2025-11-05-06-34-40"

  language "cs" do
    sha256 "6b8d321f46ac589ec00a46b6f030ba6e17cd86255aebaee07f303a404c7e0c35"
    "cs"
  end
  language "de" do
    sha256 "03637b1915621e3f0f746c62b9ab63455b7b87c896c28a687d1fd1f4c1c01111"
    "de"
  end
  language "en-GB" do
    sha256 "bf5244a07c3e4443ad187ec63b110d30382ee524ea9c3819d23e6e496ca45a28"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c50fc158e60a5743dcfd37f97adab48e07b8945cf7fdc5fb386b4e0975e47ae5"
    "en-US"
  end
  language "fr" do
    sha256 "e3828d68968fb5d63ddefc06f316b75fc0b2ba822c5ddf38fe128235fb4c0db8"
    "fr"
  end
  language "gl" do
    sha256 "2c99304d779311162adbeae0146b400c75aa760bb6a1bdd351c137288cd417ef"
    "gl"
  end
  language "it" do
    sha256 "937706fa48aaf4c396eb816b901e6326f50332d537aeece2a309d66b8763cfac"
    "it"
  end
  language "ja" do
    sha256 "80c403762197c86e933dd3efec94c39e2381037e67072dd19b69ec8271e67a53"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "102b59c406778ced90cfaa7255e6c6ae356712e1823ceb24b9954a62868736c9"
    "nl"
  end
  language "pl" do
    sha256 "bba24fc8867a199b24d09ebc0f22f44be4e55cdc27ba2383bffe70a8123347b1"
    "pl"
  end
  language "pt" do
    sha256 "49eabc1ad2b24a2ae07a991356900639153edb8ab420b6dcb17db827c921130b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4945c55984a4af2a550ba3791cffc0b18911abcfd301b44421ea908c388d037d"
    "pt-BR"
  end
  language "ru" do
    sha256 "eaa8e01fbbfd4d5789ad81c29804cee8fd1e9a911bbe7a1f3170239e985b0b1d"
    "ru"
  end
  language "uk" do
    sha256 "1bc426eea5272bcd7a3d0e7030ce06a9ce3309932b38c6e92fcbd16063a3a308"
    "uk"
  end
  language "zh-TW" do
    sha256 "f69e0b049431209c1215bfb8e361ef8ab78cb30efcfacc2b229c17e95904897f"
    "zh-TW"
  end
  language "zh" do
    sha256 "abc85f9ac009d2084d1be7bc63e51f0ae2e2a306a8d653d2b127f2f63b47bac7"
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
