cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.0_924"
  sha256 arm:   "beb2bc4570b402056d9d6f4c73b78d06bfba4bc2e5e9f8aa68d16a9e9c06018c",
         intel: "c581b59f0037cd4d4d14ef432f1ec6b4ca5683e5fe19aca665f7050c851ede2a"

  url "https://cdn-updates.orbstack.dev/#{arch}/OrbStack_v#{version}_#{arch}.dmg"
  name "OrbStack"
  desc "Replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  livecheck do
    url "https://orbstack.dev/download/beta/latest/#{arch}"
    regex(/OrbStack[._-]v?(\d+(?:[._-]\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

  app "OrbStack.app"

  postflight do
    system_command "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl",
                   args: ["_internal", "brew-postflight"]
  end

  uninstall script: {
    executable: "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl",
    args:       ["_internal", "brew-uninstall"],
  }

  zap script: {
        executable: "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl",
        args:       ["_internal", "brew-uninstall", "--zap"],
      },
      trash:  [
        "~/.orbstack",
        "~/Library/Caches/dev.kdrag0n.MacVirt",
        "~/Library/HTTPStorages/dev.kdrag0n.MacVirt",
        "~/Library/Preferences/dev.krag0n.MacVirt.plist",
        "~/Library/WebKit/dev.kdrag0n.MacVirt",
        "~/Library/Saved Application State/dev.kdrag0n.MacVirt.savedState",
      ]

  caveats <<~EOS
    Open the OrbStack app to finish setup.
  EOS
end
