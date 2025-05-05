cask "rio" do
  version "0.2.13"
  sha256 "6bca2e411f7403416f0f2f269f171e8d3a52cfc215da06f4b5301e325e3a4824"

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
