cask "rio" do
  version "0.0.7"
  sha256 "b01a5b5b49bd61d4d67bb9aee1369468838be489cfecd15a58c4666cfb9dda48"

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

  zap trash: [
    "~/Library/Saved Application State/com.raphaelamorim.rio.savedState",
  ]
end
