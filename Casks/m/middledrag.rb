cask "middledrag" do
  version "1.4.2.1"
  sha256 "fc440ff44fd61dec178624462c204156ccb3cb28207bd7c246b5ce3894dfde73"

  url "https://github.com/NullPointerDepressiveDisorder/MiddleDrag/releases/download/v#{version}/MiddleDrag-#{version}.pkg",
      verified: "github.com/NullPointerDepressiveDisorder/MiddleDrag/"
  name "MiddleDrag"
  desc "Middle-click and middle-drag via three-finger trackpad gestures"
  homepage "https://middledrag.app/"

  livecheck do
    url "https://raw.githubusercontent.com/NullPointerDepressiveDisorder/MiddleDrag/appcast/appcast.xml"
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
