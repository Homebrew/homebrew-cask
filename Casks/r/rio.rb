cask "rio" do
  version "0.5.15"
  sha256 "b247ec6d8f3e8c2e6dd8355762675dd8a1ba32196c380ee792fb6e061d014032"

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
