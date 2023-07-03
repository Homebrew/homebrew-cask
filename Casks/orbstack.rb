cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "0.13.0_1910"
  sha256 arm:   "7bff3351115bc9b59ce0ebf53c883300d656533baf0621eca7c477d6dfaa5737",
         intel: "bfeb39f5004560e46b8e030c40b1a484f87592b613ff67b1d740ae349587cb11"

  url "https://cdn-updates.orbstack.dev/#{arch}/OrbStack_v#{version}_#{arch}.dmg"
  name "OrbStack"
  desc "Replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  livecheck do
    url "https://orbstack.dev/download/beta/latest/#{arch}"
    regex(/OrbStack[._-]v?(\d+(?:[._-]\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "OrbStack.app"
  binary "#{appdir}/OrbStack.app/Contents/MacOS/bin/orb"
  binary "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl"

  postflight do
    system_command "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl",
                   args: ["_internal", "brew-postflight"]
  end

  uninstall script: {
    executable: "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl",
    args:       ["_internal", "brew-uninstall"],
  }

  zap trash: [
        "~/.orbstack",
        "~/Library/Caches/dev.kdrag0n.MacVirt",
        "~/Library/HTTPStorages/dev.kdrag0n.MacVirt",
        "~/Library/Preferences/dev.kdrag0n.MacVirt.plist",
        "~/Library/WebKit/dev.kdrag0n.MacVirt",
        "~/Library/Saved Application State/dev.kdrag0n.MacVirt.savedState",
      ],
      rmdir: [
        "~/OrbStack",
      ]

  caveats <<~EOS
    Open the OrbStack app to finish setup.
  EOS
end
