cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.21"
  sha256 arm:   "ad108759577292fc057c6195e36cd7059f750af62e991fee2559d8efae027026",
         intel: "0150e5614591ef8729227ad7823d29405672a594a92bca58c77abbcdc2247527"

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
