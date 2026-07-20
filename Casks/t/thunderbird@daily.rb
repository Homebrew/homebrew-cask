cask "thunderbird@daily" do
  version "154.0a1,2026-07-20-10-19-50"

  language "cs" do
    sha256 "cc8387d55445d5bffd2f480dd6e5922d3a75df9f3c159c2f46bbcf2c5e3f2844"
    "cs"
  end
  language "de" do
    sha256 "a49042fec86601d7ca7d242ee59c4a26c3ef80bb721224323885e2c324866e7e"
    "de"
  end
  language "en-GB" do
    sha256 "cbca1e59d21e37b88d8e2c0e7d21809b4d1f7ecaa89e82c4bc1a72fc5fdecdbd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c2fdbadfec63fac8368b6ff6d4c079c85a1836c6d6bbe106bd6e5454b33d05d7"
    "en-US"
  end
  language "fr" do
    sha256 "3cd236a3e2f53c55799853ca0c13e1575de2adef087d5b2abf83bd4622c82122"
    "fr"
  end
  language "gl" do
    sha256 "2b85231d46ad66024832c12bb8c8f872280277453779b36f9acae6c82048c4d1"
    "gl"
  end
  language "it" do
    sha256 "68fa4cfbdfc12f7b714504dec4d6f25d65f66b29737407576328623caaf8d366"
    "it"
  end
  language "ja" do
    sha256 "2a33b211d7df0aba9c7b1a39d0de013f633a384852d1a4976d93947e89030253"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "863584b87295ce030aeb1b9765c650077ede3e4bac8d851d1f00f3709d798b8d"
    "nl"
  end
  language "pl" do
    sha256 "c84b68a759f674be7b0135787cc6ea3d255b24582debce31be0ead354b95e915"
    "pl"
  end
  language "pt" do
    sha256 "2fbed67e8d5af86501c64c079ada9cce4d0fe1aea3befda67b467856ff280e26"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4b25de8595d5d4b07319a3ca360af234a43642c920e2c6057e705c8897bd05e2"
    "pt-BR"
  end
  language "ru" do
    sha256 "d621834e50a0e780121820408ea57298b5b710347f6eb96681f95efc1d61b1df"
    "ru"
  end
  language "uk" do
    sha256 "3f47d6699741f2873b18f5ac43ec9125ad78c6def9cda004986a05ac03a0e063"
    "uk"
  end
  language "zh-TW" do
    sha256 "178b8996406e1d54d38710bb241fd3be87f8f28f7ad95ebc4e3eb464343e31fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "fad4c579317159aad320e92ebce81214fb5dbedba666de0c1f50f236a280fd34"
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
  depends_on :macos

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
