cask "museeks" do
  version "0.11.4"
  sha256 "d4f5cc7a591dce18ea890a0cb9ef2c667fe59c175ab9c6939dcd9b7ee8a8a55e"

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
