cask "rio" do
  version "0.0.61"
  sha256 "2afbd929bb00b37649738920849c97995bd4d782d4ee1c66b24e044aa2e30e32"

  url "https://github.com/raphamorim/rio/releases/download/v#{version}/macos-rio.zip"
  name "Rio"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/raphamorim/rio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Rio.app"
  binary "Rio.app/Contents/MacOS/rio"
end