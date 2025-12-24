cask "thunderbird@daily" do
  version "148.0a1,2025-12-24-10-04-59"

  language "cs" do
    sha256 "894888a0ecb3f6f7713426c6a9e4240c9e2047645a6d78a35028836018788131"
    "cs"
  end
  language "de" do
    sha256 "c579774e8eff8201a725bf64941b85ed02c34ffc3d7c62a01bd0d31bad7595a9"
    "de"
  end
  language "en-GB" do
    sha256 "d3f0c924c250db4760b73483270f1eb548f15957c7f8b581604eec0e4af489de"
    "en-GB"
  end
  language "en", default: true do
    sha256 "169c2a22b1170da39b3512bb3ac2190b525f9fd0b329deb76c1c3940d5513400"
    "en-US"
  end
  language "fr" do
    sha256 "1610482e10c9598584e13059a1b40d5d5429eb160bb4bb605ea09a4ae8158ac9"
    "fr"
  end
  language "gl" do
    sha256 "1b0cffee9c3ca10e3bfab7418d4e1a71c79e2031ccfe0c37e03725615fa50c87"
    "gl"
  end
  language "it" do
    sha256 "776e425b0e5cea50ad760a2a06e47d6b8b8e34533b7c30b223e0786ac7ca5555"
    "it"
  end
  language "ja" do
    sha256 "afa1ae9ddfb2782fb079cc7d10b3ce2aae89ea744ae403ed62085ccb6ad75cd6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ed00e489247b8009d7abedbed370e0b4d0b89d0fc7da5f6ebc35bf57bc5ce66e"
    "nl"
  end
  language "pl" do
    sha256 "fad31e1c45ed8acd0609d11b557435cfc74c629cdb1cde07e8d4c523b1ded4c3"
    "pl"
  end
  language "pt" do
    sha256 "5768e03caea8cf4037483677847b5ff614062dadfd09087ac970bcb26ef91863"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "21f64692438e5e76ecbb1ea918c7a0cb764c75323e077e1904fc089718ef16e7"
    "pt-BR"
  end
  language "ru" do
    sha256 "16ca260497412f7fa8019110d213e71b38ff2c2b488c789710fc2b2a7f8a1f92"
    "ru"
  end
  language "uk" do
    sha256 "101730ffb211cb7ceff33408fbe4b1f0af59362d7bc133102d0aee2d5cab2334"
    "uk"
  end
  language "zh-TW" do
    sha256 "3231d0ff64613efecb6c1cbda95d78dc1535b5f9a13fba17ed58c557bcc3db41"
    "zh-TW"
  end
  language "zh" do
    sha256 "01b5979f87e9a5ae66402ed53c68748c450fd694b1eff32c45e938c4ca0b6240"
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
