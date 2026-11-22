cask "picmal" do
  version "2.4.0"
  sha256 "7e7544cb1caee1a4ebaf1d8a14308a1c27094ac0eef2946051b29c4f6bd6c3dc"

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
