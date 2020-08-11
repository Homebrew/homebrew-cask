cask "alfaview" do
  version "8.8.2"
  sha256 "3ab7a4d5101c1772493f6f8e231f2b8ac8424119f5d673b32b60cf5302de8a3e"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
  name "Alfaview"
  homepage "https://alfaview.com/"

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
