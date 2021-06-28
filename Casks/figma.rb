cask "figma" do
  version "99.0.0"

  if Hardware::CPU.intel?
    sha256 "9c94aa3dc73a74900814241c9795ac7663472b44eb3f88e8596ef62ecb5de5c3"

    url "https://desktop.figma.com/mac/Figma-#{version}.zip"

    livecheck do
      url "https://desktop.figma.com/mac/RELEASE.json"
      regex(%r{/Figma[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    end
  else
    sha256 "5eb4d1073ad671dc53ec1a00225e6adf1f8645b1d43a6774514cd96009f5fdd3"

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
