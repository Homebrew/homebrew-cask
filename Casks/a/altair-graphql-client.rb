cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.5.4"
  sha256 arm:   "82247aee144de2d48c027249ab32f8bc6b29fd7a7965ceab9a066849c40c9ae8",
         intel: "f0fcecd9aa69a621cfe645fc330b7c262c0d2b73eb9ff71e7f909b56ab4c7f73"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altairgraphql.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
