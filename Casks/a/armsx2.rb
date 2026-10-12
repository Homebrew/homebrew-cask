cask "armsx2" do
  version "2.6.0.5"
  sha256 "59411ede7dc480883c7cda62ab57357efc11cbfbc91af1ded1f2ed0f3c5bf234"

  url "https://github.com/ARMSX2/ARMSX2/releases/download/#{version}/armsx2-macos-arm64-sha.31654bc.tar.xz"
  name "ARMSX2"
  desc "PlayStation 2 emulator for ARM64 platforms"
  homepage "https://armsx2.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "armsx2-macos-arm64-sha[31654bc].app"

  zap trash: [
    "~/Library/Application Support/ARMSX2",
    "~/Library/Preferences/net.armsx2.armsx2.plist",
    "~/Library/Saved Application State/net.armsx2.armsx2.savedState",
  ]

  caveats <<~EOS
    This app is unsigned. You may need to right-click and choose Open,
    or run:
      xattr -d com.apple.quarantine "/Applications/armsx2-macos-arm64-sha[31654bc].app"
  EOS
end
