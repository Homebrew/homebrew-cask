cask "caido" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.44.0"
  sha256 arm:   "c65d7ca9eb02aad0e0bebb931802d7720eea6898a14e11c87adbe9c7887780c6",
         intel: "eac48465f154d3460e70f26e67360b6cebe849ad7dc0f9b6394efe3734698239"

  url "https://caido.download/releases/v#{version}/caido-desktop-v#{version}-mac-#{arch}.dmg",
      verified: "caido.download/"
  name "Caido"
  desc "Web security auditing toolkit"
  homepage "https://caido.io/"

  livecheck do
    url "https://github.com/caido/caido/"
  end

  depends_on macos: ">= :catalina"

  app "Caido.app"
  binary "#{appdir}/Caido.app/Contents/Resources/bin/caido-cli"

  zap trash: [
    "~/Library/Application Support/Caido",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.caido.caido.sfl*",
    "~/Library/Application Support/io.caido.Caido",
    "~/Library/Preferences/io.caido.Caido.plist",
    "~/Library/Saved Application State/io.caido.Caido.savedState",
  ]
end
