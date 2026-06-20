cask "dockside" do
  version "2.9.13"
  sha256 "2dcf1303c7706d04fe101ca5bc4d1c3216c03ec6f119d9fc8ee9fffce70ac90b"

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
