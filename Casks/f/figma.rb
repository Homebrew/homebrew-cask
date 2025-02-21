cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.0.8"
  sha256 arm:   "eb765f11a1526e3f98d12d8eff1c1f587058291418fd5f2e1e6d5f25e941d9bc",
         intel: "0093604fa295dc19a758969a74f1251dddee1c02d49d9b5a97c0c0616de4dcae"

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
