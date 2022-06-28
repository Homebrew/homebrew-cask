cask "cider" do
  version "beta"
  sha256 :no_check

  url "https://github.com/ciderapp/Cider/releases/download/macos-beta/Cider.dmg", verified: "https://github.com/ciderapp/Cider/"
  name "Cider"
  desc "Open source and community oriented Apple Music"
  homepage "https://cider.sh/"

  auto_updates true

  app "Cider.app"
end
