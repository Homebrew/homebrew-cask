cask "sidenotes" do
  version "1.5.2"
  sha256 "4f73f7eb16a85362cc6b9bf0e39936a6b12be9b4ffdd8bb96f8bea034331653e"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  livecheck do
    url "https://www.apptorium.com/updates/sidenotes"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "SideNotes.app"

  zap trash: [
    "~/Library/Application Scripts/com.apptorium.SideNotes",
    "~/Library/Application Scripts/com.apptorium.SideNotes-paddle*.ShareExtension--Paddle-",
    "~/Library/Application Scripts/com.apptorium.SideNotes.ShareExtension",
    "~/Library/Application Support/com.apptorium.SideNotes-paddle",
    "~/Library/Application Support/SideNotes",
    "~/Library/Caches/com.apptorium.SideNotes-paddle",
    "~/Library/Containers/com.apptorium.SideNotes-paddle.ShareExtension--Paddle-",
    "~/Library/HTTPStorages/com.apptorium.SideNotes-paddle*",
    "~/Library/Preferences/com.apptorium.SideNotes-paddle.plist",
    "~/Library/WebKit/com.apptorium.SideNotes-paddle",
  ]
end
