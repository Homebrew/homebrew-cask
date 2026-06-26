cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.11"
  sha256 arm:   "3b8dc1044290eb7b461f0c9f7209e127cd7bad56e746be1b315f310b50e6c3b1",
         intel: "1612bb96cae1a5813b4a4cc28e96078c365a2da2612528f36dc75a065b531943"

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
