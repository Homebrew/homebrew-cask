cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.22.1"
  sha256 arm:   "3906e817a20e75a3fffceed0a839ed20f674d3934c3aa75d564f8100bd4ecf6b",
         intel: "1e50a5e219f045cd9880cf78d9880adf9245e0f9ab2e173509f85859dcb3d8c3"

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
