cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.6.2"
  sha256 arm:   "1dae1573a831a56e2412d20d6ac59e2ae1f343cd8f4c88f3f09185550df581c1",
         intel: "de5d73429b7b9754c49b8a97b9c7c368c196fbf514bc8e2472775ca2d57ad94a"

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
