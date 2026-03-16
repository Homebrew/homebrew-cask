cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.1.4"
  sha256 arm:   "d7c7eaadf637fab6ce89d3b53be719e3414eb0ff44c64a6ad39ce484439e344f",
         intel: "6eb09f752961460d9647e1217c351b6dbb64bf5efe59cecb4949bc3b48e7cfeb"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json?localVersion=#{version}"
    strategy :json do |json|
      json["version"]
    end
  end

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
