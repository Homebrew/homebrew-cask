cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.1.5"
  sha256 arm:   "ec0266098a71b510146c1915c17ed8e820a32467df2ddba4688963719b9f67a9",
         intel: "69af1c6c8c536bc486db84632bba8d8adb736fe5d9f36cc2608e413ec2a1fbae"

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
