cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.3.6"
  sha256 arm:   "f2be790a0344bfd61f676a5f6daf9845d937b78a523d23d2d7b8106115057c20",
         intel: "2ccac9737ca194a9d4d3585b111ece2cd46416b27ef62d43a9e11300e08bc331"

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
