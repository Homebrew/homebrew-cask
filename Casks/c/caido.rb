cask "caido" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.58.3"
  sha256 arm:   "4a116836e12a4bf93805f1eed0b181254e9abe3a1aebdf3d7dcab34697955696",
         intel: "514f0a5d7677708ce5be3f31af31307bbba2246b245143dc95d70236641d7a1b"

  url "https://caido.download/releases/v#{version}/caido-desktop-v#{version}-mac-#{arch}.dmg"
  name "Caido"
  desc "Web security auditing toolkit"
  homepage "https://caido.io/"

  livecheck do
    url "https://api.caido.io/releases/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  app "Caido.app"
  binary "#{appdir}/Caido.app/Contents/Resources/bin/caido-cli"

  zap trash: [
    "~/Library/Application Support/Caido",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.caido.caido.sfl*",
    "~/Library/Application Support/io.caido.Caido",
    "~/Library/Logs/Caido",
    "~/Library/Preferences/io.caido.Caido.plist",
    "~/Library/Saved Application State/io.caido.Caido.savedState",
  ]
end
