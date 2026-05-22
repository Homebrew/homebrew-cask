cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.37.4"
  sha256 arm:   "7cc753ba7e96fff1ba9c66f834c5a1db6db9b4c655d2fd76a29d38c42abb1ce8",
         intel: "e19f7a2bb4f2a701c92ca0882ac5d729182c8bcd1f4ca27ef5d7922d233c906c"

  url "https://github.com/nukeop/nuclear/releases/download/player%40#{version}/Nuclear_#{version}_#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclearplayer.com/"

  livecheck do
    url :url
    regex(/^(?:player@)?v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
