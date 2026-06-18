cask "altersend" do
  arch arm: "-arm64"

  version "1.3.0"
  sha256 arm:   "9cdc23e64c5a0c8061bdab0c30e99015ff72196f2b2f97f1a35f6a80b38a2f3e",
         intel: "b9247fa96b159cd5cd47c73c38d795e43496411ee19ed3395fcc90557ab485f1"

  url "https://github.com/denislupookov/altersend/releases/download/v#{version}/AlterSend-#{version}#{arch}.dmg",
      verified: "github.com/denislupookov/altersend/"
  name "AlterSend"
  desc "Secure, peer-to-peer file transfer app"
  homepage "https://altersend.com/"

  depends_on macos: :monterey

  app "AlterSend.app"

  zap trash: [
    "~/Library/Application Support/AlterSend",
    "~/Library/Preferences/com.altersend.desktop.plist",
  ]
end
