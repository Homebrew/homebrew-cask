cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0_16835"
  sha256 arm:   "3df6b85da75e353be66e3a52de8ceb5f7809471b9226ae9f6bf268aafff147c7",
         intel: "bcc1259d3c2225ee75e4c9fcae29d30598a901ecf7a80cf3cbcd24135a6c73d8"

  url "https://cdn-updates.orbstack.dev/#{arch}/OrbStack_v#{version}_#{arch}.dmg"
  name "OrbStack"
  desc "Replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  livecheck do
    url "https://orbstack.dev/download/stable/latest/#{arch}"
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
        "~/Library/HTTPStorages/dev.kdrag0n.MacVirt.binarycookies",
        "~/Library/Preferences/dev.kdrag0n.MacVirt.plist",
        "~/Library/Saved Application State/dev.kdrag0n.MacVirt.savedState",
        "~/Library/WebKit/dev.kdrag0n.MacVirt",
      ],
      rmdir: "~/OrbStack"

  caveats <<~EOS
    Open the OrbStack app to finish setup.
  EOS
end
