cask "rio" do
  version "0.0.8"
  sha256 "89198782332251ae737ef15fce1b293302c586cb269ea387e62685db3df47375"

  url "https://github.com/raphamorim/rio/releases/download/v#{version}/Rio-v#{version}.dmg"
  name "Rio"
  desc "Hardware-accelerated GPU terminal emulator"
  homepage "https://github.com/raphamorim/rio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Rio.app"
  binary "Rio.app/Contents/MacOS/rio"

  zap trash: "~/Library/Saved Application State/com.raphaelamorim.rio.savedState"
end
