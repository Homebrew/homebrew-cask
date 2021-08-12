cask "figma" do
  version "101.5.0"

  if Hardware::CPU.intel?
    sha256 "00ddd0aae9af355cb05904b87746225f0ba7e5aad4e120d61ce62d594004c976"

    url "https://desktop.figma.com/mac/Figma-#{version}.zip"

    livecheck do
      url "https://desktop.figma.com/mac/RELEASE.json"
      regex(%r{/Figma[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    end
  else
    sha256 "00d8e141a70e68b67535c2f5fdef54e6591c696fb65b143acb09f7eef7c45a35"

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
