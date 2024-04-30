cask "thunderbird@beta" do
  version :latest
  sha256 :no_check

  language "cs" do
    "cs"
  end
  language "de" do
    "de"
  end
  language "en-GB" do
    "en-GB"
  end
  language "en", default: true do
    "en-US"
  end
  language "fr" do
    "fr"
  end
  language "gl" do
    "gl"
  end
  language "it" do
    "it"
  end
  language "ja" do
    "ja-JP-mac"
  end
  language "nl" do
    "nl"
  end
  language "pl" do
    "pl"
  end
  language "pt" do
    "pt-PT"
  end
  language "pt-BR" do
    "pt-BR"
  end
  language "ru" do
    "ru"
  end
  language "uk" do
    "uk"
  end
  language "zh-TW" do
    "zh-TW"
  end
  language "zh" do
    "zh-CN"
  end

  url "https://download.mozilla.org/?product=thunderbird-beta-latest-SSL&os=osx&lang=#{language}",
      verified: "download.mozilla.org/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  depends_on macos: ">= :catalina"

  app "Thunderbird Beta.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbirdbeta.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
