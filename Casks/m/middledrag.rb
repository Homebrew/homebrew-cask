cask "middledrag" do
  version "1.4.1.2"
  sha256 "d4c2c5fecdc2419954491edde356c2fd19281ee2c08e668ed8b05385dc532436"

  url "https://github.com/NullPointerDepressiveDisorder/MiddleDrag/releases/download/v#{version}/MiddleDrag-#{version}.pkg",
      verified: "github.com/NullPointerDepressiveDisorder/MiddleDrag/"
  name "MiddleDrag"
  desc "Middle-click and middle-drag via three-finger trackpad gestures"
  homepage "https://middledrag.app/"

  livecheck do
    url "https://raw.githubusercontent.com/NullPointerDepressiveDisorder/MiddleDrag/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  pkg "MiddleDrag-#{version}.pkg"

  uninstall pkgutil: "app.middledrag.MiddleDrag"

  zap trash: [
    "~/Library/Application Support/MiddleDrag",
    "~/Library/Preferences/com.middledrag.MiddleDrag.plist",
  ]
end
