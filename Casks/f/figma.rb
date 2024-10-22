cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.5.5"
  sha256 arm:   "7af467b638ed12538b30450c33ec0c752efd51fa50a9c16e7db34876c68611a4",
         intel: "22597173fea95954dadfdc28814429acea17c1eec4b562e1796bdb4e1d6cfc1e"

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
