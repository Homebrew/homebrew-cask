cask "rio" do
  version "0.5.21"
  sha256 "28a735e0702dcb6d6d60acea83025b313450e2ab18908d2ae871d98730939ca3"

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
