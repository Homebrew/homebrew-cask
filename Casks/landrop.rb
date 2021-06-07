cask "landrop" do
  version "0.3.0-beta2"
  sha256 "af2c0329b1575b5aefe338007864217be36151fc5dbc86be62d63e2db27af69d"

  url "https://github.com/LANDrop/LANDrop/releases/download/v#{version}/LANDrop-#{version}-macos.dmg",
      verified: "https://github.com/LANDrop"
  name "LANDrop"
  desc "Drop any files to any devices on your LAN"
  homepage "https://landrop.app/"

  livecheck do
    url :url
  end

  app "LANDrop.app"

  uninstall quit: "app.landrop.landrop"

  zap trash: "~/Library/Preferences/app.landrop.landrop.plist"
end
