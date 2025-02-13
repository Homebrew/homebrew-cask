cask "languagetool" do
  version "2.2.14"
  sha256 "fe6871db3beeea3c3dc89fa8b0766ba569684e887d29f7d8e45c78150736c67d"

  url "https://languagetool.org/download/mac-app/LanguageToolDesktop-#{version}.dmg"
  name "LanguageTool for Desktop"
  desc "Grammar, spelling and style suggestions in all the writing apps"
  homepage "https://languagetool.org/"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://languagetool.org/download/mac-app/appcast.xml"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :sparkle do |items, regex|
      # The Sparkle versioning scheme is inconsistent. We check the short
      # version directly since the versions are not listed chronologically.
      # The livecheck may need to be reverted to extracting the version from
      # the url. See: https://github.com/Homebrew/homebrew-cask/pull/156995
      items.map { |item| item.short_version[regex, 1] }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "LanguageTool for Desktop.app"

  uninstall quit: "org.languagetool.desktop"

  zap trash: [
    "~/Library/Application Support/LanguageTool for Desktop",
    "~/Library/Caches/org.languagetool.desktop",
    "~/Library/Preferences/org.languagetool.desktop.plist",
  ]
end
