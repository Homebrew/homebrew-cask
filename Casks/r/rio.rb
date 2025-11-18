cask "rio" do
  version "0.2.36"
  sha256 "51fbc32205c2761f84824c5c303976e3d8aa04da745b66bdbe6a254cf8d9268b"

  url "https://github.com/raphamorim/rio/releases/download/v#{version}/rio.dmg"
  name "Rio"
  desc "Hardware-accelerated GPU terminal emulator"
  homepage "https://github.com/raphamorim/rio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "rio.app"
  binary "#{appdir}/rio.app/Contents/MacOS/rio"
  binary "#{appdir}/rio.app/Contents/Resources/72/rio",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/72/rio"

  zap trash: "~/Library/Saved Application State/com.raphaelamorim.rio.savedState"
end
