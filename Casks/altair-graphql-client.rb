cask "altair-graphql-client" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.4.0"

  if Hardware::CPU.intel?
    sha256 "8da157a96c170c4752229e2005c48e16279a6121944176a8f0dfef181bedb539"
  else
    sha256 "60e2389441c7701f8ace0532d86c354797c04fe5a5cec9f303fc61e69a30a959"
  end

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
