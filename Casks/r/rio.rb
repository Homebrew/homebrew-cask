cask "rio" do
  version "0.0.19"
  sha256 "f85c4af7bf9b595ba322624a35352c91f0bab2bb7a2b04d50314bb82d9fa932e"

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
  binary "Rio.app/Contents/Resources/72/rio",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/72/rio"

  zap trash: "~/Library/Saved Application State/com.raphaelamorim.rio.savedState"
end
