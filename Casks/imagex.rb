cask "imagex" do
  version "0.1.2"
  sha256 "44caf58ee3e389c76f7a3d9d1dcc842ca06c11d3a92eccb6b5847768601807e5"

  url "https://visual-computing.com/files/imagex/ImageX-v#{version}-macos.zip"
  name "ImageX"
  desc "Visually explore and search an image collection"
  homepage "https://visual-computing.com/project/imagex/"

  livecheck do
    url :homepage
    regex(/href=.*?ImageX[._-]v?(\d+(?:\.\d+)+)[._-]macos\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "ImageX.app"

  zap trash: [
    "~/Library/Preferences/de.htw.lcs.imagex.plist",
    "~/Library/Saved Application State/de.htw.lcs.imagex.savedState",
  ]
end
