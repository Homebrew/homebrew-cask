cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.10.2"
  sha256 arm:   "dc54d386e88ef646d19018bf883193c640715d53c19181fdf8eaabca83907e95",
         intel: "c16c8081f7932e4267049af7f10e573b931e0ce77718126f76191f46e75fdf9f"

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
