cask "datasette-desktop" do
  version "0.2.1"
  sha256 "76325f6ef6342de922ce49bcbc2e68f5d05bd17534f9a765a20847c6a4d5297b"

  url "https://github.com/simonw/datasette-app/releases/download/#{version}/Datasette-mac.app.zip"
  name "Datasette Desktop"
  desc "Desktop application that wraps Datasette"
  homepage "https://github.com/simonw/datasette-app"

  app "Datasette.app"

  zap trash: [
    '~/Library/Application Support/Datasette',
    '~/Library/Caches/io.datasette.app.ShipIt',
    '~/Library/Preferences/io.datasette.app.plist',
    '~Library/Saved Application State/io.datasette.app.savedState'
  ]
end
