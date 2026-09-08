cask "sidenotes" do
  version "1.6.5"
  sha256 "16326ccfa63c95fdb67e34f1b1938440d336a0cb27c8b1645ad52ae2208093fd"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version.chomp(".0")}.zip"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  livecheck do
    url "https://www.apptorium.com/updates/sidenotes"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "SideNotes.app"

  uninstall quit: "com.apptorium.SideNotes-paddle"

  zap trash: [
    "~/Library/Application Scripts/com.apptorium.SideNotes",
    "~/Library/Application Scripts/com.apptorium.SideNotes-paddle*.ShareExtension--Paddle-",
    "~/Library/Application Scripts/com.apptorium.SideNotes-paddle.Widgets",
    "~/Library/Application Scripts/com.apptorium.SideNotes.ShareExtension",
    "~/Library/Application Support/com.apptorium.SideNotes-paddle",
    "~/Library/Application Support/SideNotes",
    "~/Library/Caches/com.apptorium.SideNotes-paddle",
    "~/Library/Containers/com.apptorium.SideNotes-paddle.ShareExtension--Paddle-",
    "~/Library/Containers/com.apptorium.SideNotes-paddle.Widgets",
    "~/Library/HTTPStorages/com.apptorium.SideNotes-paddle*",
    "~/Library/Preferences/com.apptorium.SideNotes-paddle.plist",
    "~/Library/WebKit/com.apptorium.SideNotes-paddle",
  ]
end
