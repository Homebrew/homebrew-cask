cask "thunderbird@daily" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    "en-US"
  end
  language "ja" do
    "ja-JP-mac"
  end
  language "ru" do
    "ru"
  end
  language "uk" do
    "uk"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/nightly/latest-comm-central#{(language == "en-US") ? "" : "-l10n"}/" do |page|
    file_path = page.scan(%r{<td><a href="(/pub/thunderbird/nightly/[^"]+\.mac\.dmg)">}).flatten.grep(/\.#{language}\.mac\.dmg/).max
    [URI.join(page.url, file_path), { verified: "mozilla.net" }]
  end
  name "Earlybird"
  name "Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.mozilla.org/en-US/thunderbird/channel/"

  depends_on macos: ">= :catalina"

  app "Thunderbird Daily.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird daily.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
