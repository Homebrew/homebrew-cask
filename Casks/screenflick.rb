cask "screenflick" do
  version "3.1.1"
  sha256 "f5b498f883177718884694fe9d6fa75f568b8e74f602ad091248860919c071b5"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  name "Screenflick"
  desc "Screen recorder with audio"
  homepage "https://www.araelium.com/screenflick-mac-screen-recorder"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
    regex(/Screenflick(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :mojave"

  app "Screenflick.app"

  zap trash: [
    "~/Library/Caches/com.araeliumgroup.screenflick",
    "~/Library/Preferences/com.araeliumgroup.screenflick.plist",
    "~/Library/WebKit/com.araeliumgroup.screenflick",
  ]
end
