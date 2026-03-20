cask "middledrag" do
  version "1.4.3"
  sha256 "0996f5f2c53446f4ec689f41493849789bff1abff4ea3864749f46b7fa6ac99e"

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
