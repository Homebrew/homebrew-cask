cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "adaac59e238a2be8cc05f426902c423ea8b3f4bb3e6949c43bc4e169f6254e65",
         intel: "23ffc98b916addf45b0a3b7519c2b5bd8aafcb72903829eda2fc9a29273e8151"

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
