cask "rio" do
  version "0.1.3"
  sha256 "68bddd51d847c2f948c3a5a79d9f04de9891b34453f75ba4a232ac600c2bee30"

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
