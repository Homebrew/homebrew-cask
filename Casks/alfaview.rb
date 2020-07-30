cask "alfaview" do
  version "8.7.0"
  sha256 "38bd1e802c829581d28a78dc22f33b0b5636639da2947e22f77d99df666074d5"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
  name "Alfaview"
  homepage "https://alfaview.com/"

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
