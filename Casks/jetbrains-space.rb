cask "jetbrains-space" do
  version "2021.2.2.77751"
  sha256 :no_check

  url "https://download.jetbrains.com/space/jetbrains-space.dmg"
  name "JetBrains Space"
  desc "Team communication and collaboration software"
  homepage "https://www.jetbrains.com/space/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "JetBrains Space.app"
end
