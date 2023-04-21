cask "sidenotes" do
  version "1.4.11"
  sha256 "75ce9358a31276c5a76c9271f1a4a9df371ec04766594239555b0fcdf5d48982"

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
