cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "116.0.3"

  if Hardware::CPU.intel?
    sha256 "b070ee17ed4257c3084d27ebab153fa766ff4156069c2778b7fc1d7f8253c25a"
  else
    sha256 "e1bb4abdfb5471980d52616cbddb9217cb02dff5cb9b73828e20b617c7309777"
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
