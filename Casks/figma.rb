cask "figma" do
  if Hardware::CPU.intel?
    version "98.13.0"
    sha256 "213753d01235bc39925553bb78d8d079553885516cadf2e18702ccc6da46a8a8"

    url "https://desktop.figma.com/mac/Figma-#{version}.zip"
  else
    version "98.11.0"
    sha256 "85bf1fc63a799b46c0d8e2e041033b54537cca5ee5dcb27af3b6016f080ca7c0"

    url "https://desktop.figma.com/mac-arm/Figma-#{version}.zip"
  end

  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    if Hardware::CPU.intel?
      url "https://desktop.figma.com/mac/RELEASE.json"
    else
      url "https://desktop.figma.com/mac-arm/RELEASE.json"
    end
    regex(%r{/Figma[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
