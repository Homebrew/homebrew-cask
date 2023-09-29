cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.16.3"
  sha256 arm:   "cefc99c3b930e15241321cf7cdacd7b358be0ba102ae600b53ca2b4ee1e7f1eb",
         intel: "2d0822d900575a6d03bff3d5463c409d9ee2a19e4454ba47dcf832e1b6dd2402"

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
