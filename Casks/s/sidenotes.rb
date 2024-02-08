cask "sidenotes" do
  version "1.4.13"
  sha256 "55303259da4d91fa95353bbb62171172fb7642f62e9bbf9e41204bf68931c8d2"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  livecheck do
    url "https://www.apptorium.com/updates/sidenotes"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "SideNotes.app"

  zap trash: [
    "~/Library/Application Scripts/com.apptorium.SideNotes-paddle*.ShareExtension--Paddle-",
    "~/Library/Application Support/com.apptorium.SideNotes-paddle",
    "~/Library/Application Support/SideNotes",
    "~/Library/Caches/com.apptorium.SideNotes-paddle",
    "~/Library/Containers/com.apptorium.SideNotes-paddle.ShareExtension--Paddle-",
    "~/Library/HTTPStorages/com.apptorium.SideNotes-paddle*",
    "~/Library/Preferences/com.apptorium.SideNotes-paddle.plist",
    "~/Library/WebKit/com.apptorium.SideNotes-paddle",
  ]
end
