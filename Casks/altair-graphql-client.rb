cask "altair-graphql-client" do
  version "4.0.6"

  if Hardware::CPU.intel?
    sha256 "a4f4d867d1bfad2d2c5e468ab21b10726ef7ec40508b4859b2d27e006c775c51"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip",
        verified: "github.com/imolorhe/altair/"
  else
    sha256 "6ececd190e56d1357dbbfbe5ef22646d7deebaa60c17736d0939662110af5f48"

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
