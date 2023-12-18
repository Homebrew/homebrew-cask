cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.0,16493"
  sha256 arm:   "1b091b370413572baffe6b430e0a586553cdce415d2542aed09b8d83799042d0",
         intel: "23a2fdb28adf4a1254712724942b9b3ec7951034ddc3dad942299d77879136c2"

  url "https://cdn-updates.orbstack.dev/#{arch}/OrbStack_v#{version.csv.first}_#{version.csv.second}_#{arch}.dmg"
  name "OrbStack"
  desc "Replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  livecheck do
    url "https://cdn-updates.orbstack.dev/#{arch}/appcast.new.xml"
    strategy :sparkle
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
