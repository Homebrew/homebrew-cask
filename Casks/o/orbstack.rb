cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "0.17.3_16179"
  sha256 arm:   "df8641aaf9250989f3f77a6d61f37316778c41312964bd6f2f326057b41f206e",
         intel: "d14a2ff80d4afb08760fc9c43f9c113eb8d6faafee1528f9397301ffc9cf48be"

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
        "~/Library/HTTPStorages/dev.kdrag0n.MacVirt.binarycookies",
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
