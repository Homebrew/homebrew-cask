cask "altair-graphql-client" do
  version "4.0.10"

  if Hardware::CPU.intel?
    sha256 "a030f9b98c60e164c91389ae7a1ca6f58e0b5fafb5154b0cc75eb216cf90fdcd"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_x64_mac.zip",
        verified: "github.com/imolorhe/altair/"
  else
    sha256 "5e2d8c09818a3cf382767210fec291c50146bc4d1132f755aaf79ee08a63bdd1"

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
