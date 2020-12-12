cask "gridea" do
  version "0.9.2"
  sha256 "401033bd7db5a39be7cea1ece6c51bfcae835f0abb8003431f045d7e636602db"

  # github.com/getgridea/gridea/ was verified as official when first introduced to the cask
  url "https://github.com/getgridea/gridea/releases/download/v#{version}/Gridea-#{version}.dmg"
  appcast "https://github.com/getgridea/gridea/releases.atom"
  name "Gridea"
  desc "Static blog writing client"
  homepage "https://gridea.dev/"

  auto_updates true

  app "Gridea.app"
end
