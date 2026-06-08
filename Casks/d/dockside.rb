cask "dockside" do
  version "2.9.6"
  sha256 "dc4121fceb483fb9f91012fd4ec4136cc70239ddc8e19bca5402b989667ff9c5"

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
