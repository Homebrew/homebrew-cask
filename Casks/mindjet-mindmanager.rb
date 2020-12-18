cask "mindjet-mindmanager" do
  version "13.2.204"
  sha256 "6f23f3afee1f8046f9997d01179e3e8e4fd6354acb13ed1bf7c005478e15f4da"

  url "https://download.mindjet.com/MindManager_Mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mindjet.com/latest-release-notes-mac-english",
          must_contain: version.dots_to_underscores
  name "Mindmanager"
  desc "Mind Mapping Tool"
  homepage "https://www.mindjet.com/mindmanager/"

  depends_on macos: ">= :high_sierra"

  app "MindManager.app"
end
