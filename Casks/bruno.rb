cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.12.1"
  sha256 arm:   "6c6703880f342faf90c9e1771ce9c98a2c2c27e6a1ba55906edb13134bb2dea8",
         intel: "1b52f1c6454d6a5939565956cb2e074f0a2ec2acc72508f9fb86c62ac3913866"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
