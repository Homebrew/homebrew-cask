cask "caido" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.43.1"
  sha256 arm:   "73d8ac814997696994afedc2abbb6b7270453e116f9645b2ff5f378601d9dab0",
         intel: "def7984932e62ca987ca37b6919aa0177fa0b347d924a6d75b0055826c8027d9"

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
