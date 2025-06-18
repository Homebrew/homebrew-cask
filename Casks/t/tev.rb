cask "tev" do
  arch intel: "-intel"

  version "2.1"
  sha256 arm:   "1c2f4f6fdff28fe15f06256c74cf5177cb5eba947c1849eddce36f31901cb04f",
         intel: "16d7553359bd8cd42b1d2dc0aeb922a2ea8cce8e1521bce80b6522fa49f88c15"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "HDR image comparison tool with an emphasis on OpenEXR images"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :catalina"

  app "tev.app"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
