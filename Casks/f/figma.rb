cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.4.13"
  sha256 arm:   "36dbf69cb4b3148b95f9708cdf01270c865fd279d91cf284c51d93bfdb511652",
         intel: "c5dcc36f62e2e8b24b8c648b64713adaa04c3a9cfd9eb05b8f788708a7cd6c26"

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
