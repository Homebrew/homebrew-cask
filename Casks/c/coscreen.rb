cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.11.14"
  sha256 arm:   "00a91e0532ad699c3eb9b1df6bd56334e161e255026b9776bbe761f65c1e28b5",
         intel: "9f58c2e9157a8bbf57f9e48e6ac5d090b9c0420a62973a12259d7a115b83ec91"

  url "https://update.coscreen.org/CoScreen-#{version}-stable-#{arch}.dmg",
      verified: "update.coscreen.org/"
  name "CoScreen"
  desc "Collaboration tool with multi-user screen sharing"
  homepage "https://www.coscreen.co/"

  livecheck do
    url "https://update.coscreen.org/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
