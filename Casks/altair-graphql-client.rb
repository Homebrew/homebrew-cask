cask "altair-graphql-client" do
  version "4.0.7"

  if Hardware::CPU.intel?
    sha256 "79461a75c1f1b04c1114be510ad45360cba9b4f79da8c5b74012e9b50a4039cb"

    url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip",
        verified: "github.com/imolorhe/altair/"
  else
    sha256 "d8571c8fc7e74d632179b5fe316f7886941fcc01a1c848b289cdf070724a0ea4"

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
