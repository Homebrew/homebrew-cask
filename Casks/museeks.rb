cask "museeks" do
  version "0.11.5"
  sha256 "c7c9e473bbaf3093f495c7b12b6a30b21108182613b2742fa0c4c789d3b9ca5a"

  url "https://github.com/martpie/museeks/releases/download/#{version}/museeks.dmg",
      verified: "github.com/martpie/museeks/"
  appcast "https://github.com/martpie/museeks/releases.atom"
  name "Museeks"
  desc "Music player"
  homepage "https://museeks.io/"

  app "Museeks.app"

  zap trash: [
    "~/Library/Application Support/museeks",
    "~/Library/Saved Application State/com.electron.museeks.savedState",
  ]
end
