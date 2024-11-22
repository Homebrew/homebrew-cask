cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.6.5"
  sha256 arm:   "ee7b74b1360dc5d73e281617c6d04f4a49e028254a80024730a28e616b181493",
         intel: "9091ea99844084762f1b1e1b4a5cf5512b4a7e4e1bc146278e54023915de11b5"

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
