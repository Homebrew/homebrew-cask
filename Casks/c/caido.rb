cask "caido" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.41.0"
  sha256 arm:   "eb2e9b61635231bab9f2829d4df70db00a5071c0469b08db1a3dd9e007d09737",
         intel: "a57f6aa21cff95853697f20e29d2dfbbedb56bacd14ba177930b17ca92a6e093"

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
