cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "5cde79ea2cad76c78f257b65cc0c01d85baba758e929bfa866d081d1de4b3e98",
         intel: "6c48fd427e0c66a2a38aaf3d095b964b0e083b203411c6aca5c9f370cb89ca5a"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
