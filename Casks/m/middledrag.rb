cask "middledrag" do
  version "1.4.1.3"
  sha256 "4fda97054639830b7c41aabb55c2e3c68e5ac560a0191d12ab94d4c76a632f0f"

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
