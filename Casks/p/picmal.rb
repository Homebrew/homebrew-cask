cask "picmal" do
  version "2.0.0"
  sha256 "c7175c99bb771edbae63406dda8a132fa9e9a72657bb2466dfe195d32ba6b1b0"

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
