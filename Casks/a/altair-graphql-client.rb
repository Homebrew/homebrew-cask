cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.4.4"
  sha256 arm:   "4dce16a64a7fad51c8544f703013d0af8f410152e96e2abbdd2060ae8727b6c9",
         intel: "f4ffcd2fd4daa51bfcb65443f627027590cd47edaf358e7b742d68181d44cbe7"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altairgraphql.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
