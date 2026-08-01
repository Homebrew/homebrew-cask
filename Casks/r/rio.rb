cask "rio" do
  version "0.5.5"
  sha256 "1bbe2c328a96dcaec4d9d7805ae9db5547577f52b21ddda06d2600cea2e796b9"

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
