cask "dockside" do
  version "1.9.22"
  sha256 "880262073751a93173f988f3b310d4d1df7ae44d07b3bd7836d7423de40dd492"

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
  depends_on macos: ">= :ventura"

  app "Dockside.app"

  zap trash: "~/Library/Preferences/com.hachipoo.Dockside.plist"
end
