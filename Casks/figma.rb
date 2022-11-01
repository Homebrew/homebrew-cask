cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.4.4"
  sha256 arm:   "9cf4bfa0bc01c0c34f2bace18c540e7b93ca9fbdb93b089c47b2318169e0dfa1",
         intel: "b03e5d7ac57e87e60661e3804bef18a1b03c2a8096ae8d3be965402316b943cc"

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
