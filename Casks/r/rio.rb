cask "rio" do
  version "0.2.14"
  sha256 "a8d779df6d8f0390190fd0bfab84aff33314d28afe211332fc61ac442c50daf3"

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
