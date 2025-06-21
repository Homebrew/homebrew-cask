cask "rio" do
  version "0.2.20"
  sha256 "d3f8c3f51b03f2baf60654c5135af69ae62f97303e52a196f31645f4d858c782"

  url "https://github.com/raphamorim/rio/releases/download/v#{version}/rio.dmg"
  name "Rio"
  desc "Hardware-accelerated GPU terminal emulator"
  homepage "https://github.com/raphamorim/rio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with formula: "rio"
  depends_on macos: ">= :catalina"

  app "rio.app"
  binary "rio.app/Contents/MacOS/rio"
  binary "rio.app/Contents/Resources/72/rio",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/72/rio"

  zap trash: "~/Library/Saved Application State/com.raphaelamorim.rio.savedState"
end
