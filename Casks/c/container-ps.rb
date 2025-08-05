cask "container-ps" do
  version "1.3.0"
  sha256 "8a710ff70ed79d7ca93d51461d77a3268cdb8c3aa985ce4d0b99686b36b62069"

  url "https://github.com/Toinane/container-ps/releases/download/#{version}/Container.PS-#{version}.dmg"
  name "Container PS"
  desc "App to show all docker images"
  homepage "https://github.com/Toinane/container-ps"

  app "Container PS.app"

  zap trash: [
    "~/Library/Application Support/container-ps",
    "~/Library/Preferences/com.electron.container-ps.plist",
    "~/Library/Saved Application State/com.electron.container-ps.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
