cask "altair-graphql-client" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.5.1"

  if Hardware::CPU.intel?
    sha256 "8eb0f8abb4627809a5503559198d70af01d80086acbc5be2664ba40e9534c8e3"
  else
    sha256 "82929a111e7991ef18467d25dab81c9c65e322e8680a182ab4c45c2ce1a04e4b"
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
