cask "altair-graphql-client" do
  version "4.0.11"

  if Hardware::CPU.intel?
    sha256 "2be39a77d3ef06cefb70c0a15ab0a468b2405582d06aeedfa71132c11cd18328"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_x64_mac.zip",
        verified: "github.com/imolorhe/altair/"
  else
    sha256 "51da28db9ef055a14b69dce04a29374c8a72e50a2de2660bd553a55928b5424a"

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
