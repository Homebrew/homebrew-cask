cask "datasette" do
  version "0.2.3"
  sha256 "a708f435afebf5c95d7ea4026699b6b64db6b7e08f9581dd5a143109a5cb986d"

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
