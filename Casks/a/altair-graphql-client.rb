cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.2.8"
  sha256 arm:   "f72338afcaad63b05f8dbfd383b8a394e3619120f85d35d6bd83a53cbf86d67d",
         intel: "22f0f0e14168f4366425eeb8681b8b14c19b0358a7654e18405508760822efe5"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
