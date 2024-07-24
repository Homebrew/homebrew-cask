cask "rio" do
  version "0.1.2"
  sha256 "a7b8bda85f7784d1a627ab7760ac9c32726de8c99129932e4761727937a16d69"

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
