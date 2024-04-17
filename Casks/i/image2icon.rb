cask "image2icon" do
  version "2.17"
  sha256 "653db224080c06b303a187e3048b6aa4dd07b7d0a5021623f038254e12baa81a"

  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip",
      verified: "sf-applications.s3.amazonaws.com/Image2Icon/"
  name "Image2Icon"
  desc "Icon creator and file and folder customiser"
  homepage "https://www.img2icnsapp.com/"

  livecheck do
    url "http://apps.shinynode.com/apps/image2icon_appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Image2Icon.app"

  zap trash: [
    "~/Library/Application Scripts/net.shinyfrog.image2icon.templateRenderer",
    "~/Library/Caches/net.shinyfrog.image2icon",
    "~/Library/Containers/net.shinyfrog.image2icon*",
    "~/Library/Containers/net.shinyfrog.templateRenderer",
    "~/Library/Preferences/net.shinyfrog.image2icon.plist",
    "~/Library/Saved Application State/net.shinyfrog.image2icon.savedState",
  ]
end
