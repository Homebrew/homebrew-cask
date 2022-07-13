cask "altair-graphql-client" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.5.2"

  if Hardware::CPU.intel?
    sha256 "32f5a2520ff5f61e40de42e6bb1332fda8cbf19d917d8ee9f7f1c6c5d2f847dd"
  else
    sha256 "b0e59c4bfda0aa55f05867ea3894d2ce75ae932d6a4f0217e8adf8d58de0e702"
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
