cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "116.2.2"

  if Hardware::CPU.intel?
    sha256 "514b8499edb424a3a4bfff103141aa4b9d47436feb5fc41b36c0ce51a0a4ce58"
  else
    sha256 "6c3fef2c7c39cafd9de0571b896c93abe4b5c111f9adb2778a4026243e3ad229"
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
