cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.15"
  sha256 arm:   "bea58badf446016033cdfda8b170248d49241bc2053aa1eab98d82e08b089b98",
         intel: "cf084d072dd7344dc1460d2a1f47fa3a148113ac227990d4b8e4fd8ceb53dcb8"

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
