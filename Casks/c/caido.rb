cask "caido" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.49.0"
  sha256 arm:   "08dec242f556aa05b9ebb89138f39140a3ce4f18f5dbed8ed4face2de6bcc33c",
         intel: "b5c9e55d76e35634b3521b1a86cb4c2e4b6a48798b7f3a2017c78dbd17d637c1"

  url "https://caido.download/releases/v#{version}/caido-desktop-v#{version}-mac-#{arch}.dmg",
      verified: "caido.download/"
  name "Caido"
  desc "Web security auditing toolkit"
  homepage "https://caido.io/"

  livecheck do
    url "https://api.caido.io/releases/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

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
