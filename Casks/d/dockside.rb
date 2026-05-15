cask "dockside" do
  version "2.8.6"
  sha256 "7b986e7047085f34d6b63c0ab282177bceb5fee33abe1b8df28b785165138c10"

  url "https://github.com/PrajwalSD/Dockside/releases/download/v#{version}/Dockside.dmg",
      verified: "github.com/PrajwalSD/Dockside/"
  name "Dockside"
  desc "Dock utility"
  homepage "https://hachipoo.com/dockside-app"

  livecheck do
    url "https://prajwalsd.github.io/Dockside/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Dockside.app"

  zap trash: "~/Library/Preferences/com.hachipoo.Dockside.plist"
end
