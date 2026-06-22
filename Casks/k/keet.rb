cask "keet" do
  arch intel: "-Intel"

  version "4.17.1"
  sha256 arm:   "9fc3eded14052fd5a8e5557d41a458faa5373168d0798c06269faa354a355a93",
         intel: "d3f4d7131e279c62a406b27008661f3f9142ad2a53fa78813c6dfd4f7d7616f8"

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
