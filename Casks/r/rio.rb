cask "rio" do
  version "0.5.14"
  sha256 "e735b5b029a90ead1ec071c8cd56e31076afdbf5c8d839096de23387d8b7fc87"

  url "https://github.com/raphamorim/rio/releases/download/v#{version}/rio.dmg"
  name "Rio"
  desc "Hardware-accelerated GPU terminal emulator"
  homepage "https://github.com/raphamorim/rio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "rio.app"
  binary "#{appdir}/rio.app/Contents/MacOS/rio"
  binary "#{appdir}/rio.app/Contents/Resources/72/rio",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/72/rio"

  zap trash: [
    "~/Library/Preferences/com.raphaelamorim.rio.plist",
    "~/Library/Saved Application State/com.raphaelamorim.rio.savedState",
  ]
end
