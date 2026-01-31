cask "middledrag" do
  version "1.4.1.1"
  sha256 "df9b43e8725f0910f56068a5f79cc33df4e634e99f60610482a3b60906757190"

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
