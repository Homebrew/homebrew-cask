cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "112.2.0"

  if Hardware::CPU.intel?
    sha256 "f0134fe43c749f23c01e1ff034938029364c9360ee8439450c9a2a74ba24f795"
  else
    sha256 "ffa2d3f6da23ebfe8576a6c7485dfa86e4a061d19250d9d0638dde2274ad7170"
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
