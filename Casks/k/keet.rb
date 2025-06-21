cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "2.5.1"
  sha256 arm:   "778fbc1e5f63c92b993d83fa84d60faf8fc5a392c73bb4ac6248256ddd889c5b",
         intel: "4d84d0dcf16b8ab4b3c7a882cc4913e47d52170b0cc40aff92aea3fd733d02a7"

  url "https://keet.io/downloads/#{version}/Keet-#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://keet.io/downloads/"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
