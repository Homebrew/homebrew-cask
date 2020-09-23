cask "mindjet-mindmanager" do
  version "13.2.132"
  sha256 "5a51298c43ff88934d4d240a6d4ad15ba73d6dddf05d0cc32a58c68c1e1fc4f9"

  url "https://download.mindjet.com/MindManager_Mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mindjet.com/latest-release-notes-mac-english",
          must_contain: version.dots_to_underscores
  name "Mindmanager"
  desc "Mind Mapping Tool"
  homepage "https://www.mindjet.com/mindmanager/"

  depends_on macos: ">= :high_sierra"

  app "MindManager.app"
end
