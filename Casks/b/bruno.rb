cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.13.2"
  sha256 arm:   "9b792caec145611ad72c5d0066f0e4d3e8a72ef9bff8cb736aad0fbad50319a3",
         intel: "3585b8e0d4cc3afc865e152be913e582e5ae23d14016d4b6fcb50646e0959a42"

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
