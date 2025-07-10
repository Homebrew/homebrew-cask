cask "aural" do
  version "4.0.0-preview28"
  sha256 "39687b8d068e435ef9253ed366b71250038bfe0927cad52650c5a5cf83cbb04d"

  url "https://github.com/maculateConception/aural-player/releases/download/final/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  deprecate! date: "2025-06-22", because: :discontinued

  depends_on macos: ">= :high_sierra"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end
