cask "screenflick" do
  version "3.1.5"
  sha256 "764d559a5def24d2434ad24c80c3491d1c048debb79e84cbff7521d13cc8aae5"

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
