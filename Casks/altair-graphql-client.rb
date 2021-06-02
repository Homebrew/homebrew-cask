cask "altair-graphql-client" do
  version "4.0.5"

  if Hardware::CPU.intel?
    sha256 "a2d4392a5abc2a69623d5f88c0643edd06bd7f3fcef895a9c35ffb6a7bc01b27"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip",
        verified: "github.com/imolorhe/altair/"
  else
    sha256 "fdef49a26c15e013fe62d16f2f16e47cfe7afcb8618dbccef049b89c7e19d59f"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_arm64_mac.zip",
        verified: "github.com/imolorhe/altair/"
  end

  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
