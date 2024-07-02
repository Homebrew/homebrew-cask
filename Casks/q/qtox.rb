cask "qtox" do
  version "1.17.6"
  sha256 "f321fad4b5cb5f77ed14f1c4e08790c9acff6113ccf9e18327d463411c24d32e"

  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg",
      verified: "github.com/qTox/qTox/"
  name "qTox"
  desc "Instant messaging and video conferencing app"
  homepage "https://qtox.github.io/"

  deprecate! date: "2024-02-13", because: :discontinued

  app "qTox.app"

  zap trash: [
    "~/Library/Preferences/chat.tox.qtox.plist",
    "~/Library/Saved Application State/chat.tox.qtox.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
