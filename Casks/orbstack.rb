cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.2_1218"
  sha256 arm:   "85a419234d14951c93f7f1e6070635a88b334a6d6c243a2f3f91eaeeb970578a",
         intel: "488e8fda19d10d44da9304e6b5a1d251c252c1fd3c93f891c2cc958f534e77c0"

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
        "~/Library/Preferences/dev.krag0n.MacVirt.plist",
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
