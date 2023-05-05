cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.0_1366"
  sha256 arm:   "cf132e8e3289901c431b1db2d6a2c9b65ee1258d1ece98942006dc8281449704",
         intel: "aabbdc99724bfe8a1ab997e1c4d37666cdcf76a6c65dd8fb1fda91fdccb8d44c"

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
