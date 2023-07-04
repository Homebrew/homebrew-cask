cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.28"
  sha256 arm:   "3f4393c90ca2b90260f7e329b46e8858740991082be61eb061a0875fcc9a31fd",
         intel: "06fd9a1f245be214c57870747bc544187e1e6bdc16eace9805bd9714f40bb992"

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
