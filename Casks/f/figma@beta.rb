cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.3.1"
  sha256 arm:   "94c11220ff7e73060ba1e1640ab270f310f2169269d0d86b7f564c42fd1fb13b",
         intel: "f88069afbd299e01152ed422d380e139fe674d3db3a8d1f0c7b695e79896a855"

  url "https://desktop.figma.com/#{arch}/beta/FigmaBeta-#{version}.zip"
  name "Figma Beta"
  desc "Collaborative team software"
  homepage "https://figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/beta/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :sierra"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
