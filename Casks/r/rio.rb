cask "rio" do
  version "0.2.6"
  sha256 "4137e1d565fb5c6f4f4cedc1b48fe39f6d01dbad22f39405089d183a9a97d630"

  url "https://github.com/raphamorim/rio/releases/download/v#{version}/Rio-v#{version}.dmg"
  name "Rio"
  desc "Hardware-accelerated GPU terminal emulator"
  homepage "https://github.com/raphamorim/rio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Rio.app"
  binary "Rio.app/Contents/MacOS/rio"
  binary "Rio.app/Contents/Resources/72/rio",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/72/rio"

  zap trash: "~/Library/Saved Application State/com.raphaelamorim.rio.savedState"
end
