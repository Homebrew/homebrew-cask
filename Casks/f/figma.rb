cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.4.8"
  sha256 arm:   "103ec32fe236b41fbc62c6d35ae2a327145954ee7d5c9d1daa2b79aaa8035a7b",
         intel: "18ad1a391c755cee157137b5ef59dbd4f50fc6c698e326a3d3c0929b3c2b8bd4"

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

  auto_updates true
  depends_on macos: ">= :sierra"

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
