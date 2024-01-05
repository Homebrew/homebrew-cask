cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "5520c17bf076ac71fc3df4413f0d226e2cca0f77b7b23cfe64226f3731b1ad1e",
         intel: "91006658ff91d697d6e95ac4aaf9c1c7437cb7095ccf71cedf4bef48c0909bd5"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
