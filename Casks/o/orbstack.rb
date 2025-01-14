cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.4_18819"
  sha256 arm:   "dadbbfc2c88c37b108f5abd5781578c9be6888120cc1f948b03bfff91df1b225",
         intel: "0c877d607927480f19569deed83f7e9e86d2ae0a75973024014204e706dba4eb"

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
  depends_on macos: ">= :ventura"

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
