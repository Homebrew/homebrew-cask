cask "figma" do
  if Hardware::CPU.intel?
    version "99.0.0"
    sha256 "9c94aa3dc73a74900814241c9795ac7663472b44eb3f88e8596ef62ecb5de5c3"

    url "https://desktop.figma.com/mac/Figma-#{version}.zip"

    livecheck do
      url "https://desktop.figma.com/mac/RELEASE.json"
      regex(%r{/Figma[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    end
  else
    version "98.11.0"
    sha256 "85bf1fc63a799b46c0d8e2e041033b54537cca5ee5dcb27af3b6016f080ca7c0"

    url "https://desktop.figma.com/mac-arm/Figma-#{version}.zip"

    livecheck do
      url "https://desktop.figma.com/mac-arm/RELEASE.json"
      regex(%r{/Figma[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    end
  end

  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
