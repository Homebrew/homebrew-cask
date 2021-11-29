cask "datasette-desktop" do
  version "0.2.1"
  sha256 "76325f6ef6342de922ce49bcbc2e68f5d05bd17534f9a765a20847c6a4d5297b"

  url "https://github.com/simonw/datasette-app/releases/download/#{version}/Datasette-mac.app.zip"
  name "Datasette Desktop"
  desc "A macOS desktop application that wraps Datasette"
  homepage "https://github.com/simonw/datasette-app"

  app "Datasette.app"
end
