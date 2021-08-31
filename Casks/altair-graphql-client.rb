cask "altair-graphql-client" do
  version "4.0.9"

  if Hardware::CPU.intel?
    sha256 "9444383765e927825f755628e6e840f962221cc13b218c5df11eb79cb0310c3d"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip",
        verified: "github.com/imolorhe/altair/"
  else
    sha256 "f9b71c95f5083e4c617522c4768c132b04d40a6af25940f54d49d23bf2cfdf02"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_arm64_mac.zip",
        verified: "github.com/imolorhe/altair/"
  end

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
