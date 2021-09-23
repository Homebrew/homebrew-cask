cask "figma" do
  version "101.6.0"

  if Hardware::CPU.intel?
    sha256 "1b87be8f35b58d260ffb9dd75127d85ec33fba6b0376bb4840838ed9f88abb55"

    url "https://desktop.figma.com/mac/Figma-#{version}.zip"

    livecheck do
      url "https://desktop.figma.com/mac/RELEASE.json"
      regex(%r{/Figma[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    end
  else
    sha256 "4ea81297fbaecb2a5255b78ffddb6025b80ab38a7dc1ca76a4679fa2a3e953f0"

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
