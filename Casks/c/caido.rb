cask "caido" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.58.2"
  sha256 arm:   "465aee61799c4eb781f76607a4847b30d32ddd1db97455ab983426d13561f1c4",
         intel: "c33fe20906aae3af1b15a5f6dd89064402902fd06a4b5fc12b12c3bc4343cfe5"

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

  depends_on macos: :monterey

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
