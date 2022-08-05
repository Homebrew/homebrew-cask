cask "cider" do
  version "v1.5.4-beta.34"
  sha256 :no_check

  url "https://github.com/ciderapp/cider-releases/releases/download/#{version}/Cider-#{version}-universal.dmg", verified: "https://github.com/ciderapp/cider-releases"
  name "Cider"
  desc "Open source and community oriented Apple Music client"
  homepage "https://cider.sh/"

  auto_updates true

  app "Cider.app"
end
