cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "114.3.0"

  if Hardware::CPU.intel?
    sha256 "ebf041e5262b527c8182f4a09b81e051fecfc3cf31b6f897a3492c9897d67c20"
  else
    sha256 "29cfc9c7eab330070abf9165d60ca5105806c4860598f384526268f93a3c8337"
  end

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
