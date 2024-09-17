cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.3.3"
  sha256 arm:   "1d8b10a5fc6506d86a7330bb2f4cf4315fa54fdae133d4969f6e28eb488ebf82",
         intel: "26fbdda78ff58a1703bea5ea357f2766fe69b2d4b10f35deb57a93db318017ef"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
