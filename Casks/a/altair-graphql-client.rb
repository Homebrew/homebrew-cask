cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.10"
  sha256 arm:   "ec3c4c39a53acdc06064368b6a859a738d23b05b0385a2c85577be83ee9c382a",
         intel: "86cc616e3c16af3710ae24ac46b9f740e2ea0793b2d79c3f42d87da31bf3d649"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
