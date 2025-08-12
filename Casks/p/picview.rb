cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "3.2"
  sha256 arm:   "6a3ca6c8dd64d0d518434dc27ca0db8da3dc0f36183ecb0fa026ec49af8fab87",
         intel: "51616b7103278917149300404193ffa76e5464fa53bb53e95afcad461675342a"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/Ruben2776/PicView/"
  name "PicView"
  desc "Fast, customisable, and easy-to-use picture viewer"
  homepage "https://picview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "PicView.app"

  zap trash: [
    "~/Library/Application Support/Ruben2776/PicView",
    "~/Library/Preferences/com.ruben2776.picview.plist",
  ]
end
