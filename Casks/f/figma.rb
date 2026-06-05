cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.4.12"
  sha256 arm:   "c4d258885be902a869f18e28c201b898ec79f40af5ffe2e447a7059e2aaccde0",
         intel: "99f067591761c046ffdcaf428ee506e234c26ac47ef21620b1bdac8ab406dbdd"

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
