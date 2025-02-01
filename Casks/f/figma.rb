cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.7.4"
  sha256 arm:   "3160c0cac00b8b81b7b62375f04b9598b11cbd9e5d42a5ad532e8b98fecc6b15",
         intel: "122b89402f3575870cfae4240167c89912ed8b0a00bfce9ce5f2fe413d6781e1"

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
