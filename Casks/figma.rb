cask "figma" do
  version "102.9.0"

  if Hardware::CPU.intel?
    sha256 "88d30dc1fd870d32ae705828cafe77ace5120dab28a157824ba58405910cffbc"

    url "https://desktop.figma.com/mac/Figma-#{version}.zip"

    livecheck do
      url "https://desktop.figma.com/mac/RELEASE.json"
      regex(%r{/Figma[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    end
  else
    sha256 "b1c1b23b1f31e98f11383582c32a84c1a2ea16a93cd09f1da91b2326328d30c1"

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
