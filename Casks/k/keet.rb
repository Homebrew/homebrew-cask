cask "keet" do
  arch intel: "-Intel"

  version "4.18.0"
  sha256 arm:   "5b4a7cef0130ce421b3d234b4d99e9845406bbd6fa99acf84451896e80cd943e",
         intel: "ae231c8d4b1b0bb81aedd2ede62ca42afe46810a2b3e58f0a64cd38a4f7bf514"

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
