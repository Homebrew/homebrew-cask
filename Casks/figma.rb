cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "116.0.4"

  if Hardware::CPU.intel?
    sha256 "8989bee07e7daffe25ed54a734282cc23939e1bec7fab4ce9cf0f6408259010e"
  else
    sha256 "766fd737f064de26c50c3345ed3b8ba98e69cd7af0801147092ad7f9a2afb8ca"
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
