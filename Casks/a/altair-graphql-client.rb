cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.1.2"
  sha256 arm:   "9def1c597bd9fa41bc3e5ab8d52d8f38dd6a67f57de5b6c5783648bbae412c66",
         intel: "9e40151829d2321044e2f0f922e5e66823055c94a47eb49955eb94fb73fa8554"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
