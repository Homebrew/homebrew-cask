cask "mindjet-mindmanager" do
  version "13.1.115"
  sha256 "767951dc902b8c179a16122e5981eaa866bcf513d4065d95c2623c4285e96cf0"

  url "https://download.mindjet.com/MindManager_Mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mindjet.com/latest-release-notes-mac-english",
          must_contain: version.dots_to_underscores
  name "Mindmanager"
  desc "Mind Mapping Tool"
  homepage "https://www.mindjet.com/mindmanager/"

  depends_on macos: ">= :high_sierra"

  app "MindManager.app"
end
