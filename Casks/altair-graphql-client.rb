cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.14"
  sha256 arm:   "052b7fcf44febd546a12d33de710da101be14420f2642bdf6412c84c3e4702de",
         intel: "aa76838baf8b9679862005b21514e2daad505882c1fcaf71cbaf71c8ff5b833d"

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
