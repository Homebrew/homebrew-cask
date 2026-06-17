cask "keet" do
  arch intel: "-Intel"

  version "4.17.0"
  sha256 arm:   "5d50e197be2512a6cdf424e9cb6bc65ba72fd6ca5bb15f1eaf8490542c3db0da",
         intel: "5744671c521dc83b409bdfc1dd2e61942e8fa5686301f9ee0b4af52714942546"

  url "https://static.keet.io/downloads/#{version}/Keet#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
