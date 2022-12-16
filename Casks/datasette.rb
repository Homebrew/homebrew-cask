cask "datasette" do
  version "0.2.2"
  sha256 "4ba52826a6365b157448d206bf11c82fec6462b770b6f9db63bf0f9b6c335495"

  url "https://github.com/simonw/datasette-app/releases/download/#{version}/Datasette.app.zip",
      verified: "github.com/simonw/datasette-app/"
  name "Datasette"
  desc "Desktop application that wraps Datasette"
  homepage "https://datasette.io/desktop"

  app "Datasette.app"

  zap trash: [
    "~/Library/Application Support/Datasette",
    "~/Library/Caches/io.datasette.app.ShipIt",
    "~/Library/Preferences/io.datasette.app.plist",
    "~/Library/Saved Application State/io.datasette.app.savedState",
  ]
end
