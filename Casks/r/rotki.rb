cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.44.2"
  sha256 arm:   "1390a35b50f2074d59a880630645e4150f9961bd76e946c9b7a6bfae1081dd4b",
         intel: "5ee16b0c402b933f60cecced651539be1da154d584824b14f3dcc98de09c91b0"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
