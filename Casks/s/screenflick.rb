cask "screenflick" do
  version "3.2.5"
  sha256 "88ab38004b0c5fdab111409510fb3e48e89dee245e61bb3e3b95c0b51b7080f3"

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
