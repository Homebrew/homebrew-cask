cask "rio" do
  version "0.5.31"
  sha256 "f2b5dbd70c6e1cffa0e3d1bdcc1cd91c6796d7e0a2e8c7d91b302ae71142ada7"

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

  uninstall quit: "com.raphaelamorim.rio"

  zap trash: [
    "~/Library/Caches/rio",
    "~/Library/Preferences/com.raphaelamorim.rio.plist",
    "~/Library/Saved Application State/com.raphaelamorim.rio.savedState",
  ]
end
