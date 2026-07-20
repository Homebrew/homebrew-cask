cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.14"
  sha256 arm:   "366b91ab765a6913d5ae4bdb9c2f39abaa3e5a19e75f2d6815bd3b288eac243f",
         intel: "fa2909e4f948543c25adf67e7a299c02e9622de4c9192dfc1ef834226611c20a"

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
  depends_on :macos

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
