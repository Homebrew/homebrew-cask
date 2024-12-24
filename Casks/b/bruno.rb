cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.37.0"
  sha256 arm:   "b5a693baaf30bf8fcabf67755a7db63fb14c2aea9d2554a00eaee29d4bd16ac7",
         intel: "0ca652b99081a1a16bf6e64b0005e28422eb24dab4639635b62be202d32ab230"

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
