cask "picmal" do
  version "2.1.0"
  sha256 "d3f8739cd236b36bf09070e66bbb1393f4bb45db2c20f75096731e0196a394aa"

  url "https://picmal.app/downloads/Picmal-#{version}.dmg"
  name "Picmal"
  desc "Converts and compresses images, video, audio and PDFs locally"
  homepage "https://picmal.app/"

  livecheck do
    url "https://picmal.app/picmal/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Picmal.app"

  uninstall quit: "com.cantimplorastudio.picmal"

  zap trash: [
    "~/Library/Application Support/com.cantimplorastudio.picmal",
    "~/Library/Application Support/Picmal",
    "~/Library/Caches/com.cantimplorastudio.picmal",
    "~/Library/HTTPStorages/com.cantimplorastudio.picmal",
    "~/Library/Preferences/com.cantimplorastudio.picmal.plist",
    "~/Library/Saved Application State/com.cantimplorastudio.picmal.savedState",
    "~/Library/WebKit/com.cantimplorastudio.picmal",
  ]
end
