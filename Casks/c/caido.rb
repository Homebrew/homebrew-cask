cask "caido" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.43.0"
  sha256 arm:   "387e6f0d68aeda629f4348c74f57ee06e9d5be3b041f524113b53c65878d29bc",
         intel: "b7fd61d70a777273982fa13105a39cef5f20ae06cd98b44f83c8bd924350bdc6"

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
