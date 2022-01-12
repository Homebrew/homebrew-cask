cask "image2icon" do
  version "2.16,930"
  sha256 "c860da6709efbd8f9ea2a8684a9978352acf7c3d9380c9464dfae1c09f345534"

  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version.csv.first}.zip",
      verified: "sf-applications.s3.amazonaws.com/Image2Icon/"
  name "Image2Icon"
  desc "Icon creator and file and folder customizer"
  homepage "https://www.img2icnsapp.com/"

  livecheck do
    url "http://apps.shinynode.com/apps/image2icon_appcast.xml"
    strategy :sparkle
  end

  app "Image2Icon.app"

  zap trash: [
    "~/Library/Caches/net.shinyfrog.image2icon",
    "~/Library/Preferences/net.shinyfrog.image2icon.plist",
    "~/Library/Containers/net.shinyfrog.image2icon*",
    "~/Library/Containers/net.shinyfrog.templateRenderer",
    "~/Library/Saved Application State/net.shinyfrog.image2icon.savedState",
  ]
end
