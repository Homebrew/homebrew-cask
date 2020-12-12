cask "museeks" do
  version "0.11.5"
  sha256 "c7c9e473bbaf3093f495c7b12b6a30b21108182613b2742fa0c4c789d3b9ca5a"

  # github.com/martpie/museeks/ was verified as official when first introduced to the cask
  url "https://github.com/martpie/museeks/releases/download/#{version}/museeks.dmg"
  appcast "https://github.com/martpie/museeks/releases.atom"
  name "Museeks"
  desc "Simple, clean and cross-platform music player"
  homepage "https://museeks.io/"

  app "Museeks.app"

  zap trash: [
    "~/Library/Application Support/museeks",
    "~/Library/Saved Application State/com.electron.museeks.savedState",
  ]
end
