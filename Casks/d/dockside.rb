cask "dockside" do
  version "2.9.23"
  sha256 "214968ab236f3220ca223764e849d97f70ca36de5c537f47a603c08f15cec45a"

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
