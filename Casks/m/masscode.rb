cask "masscode" do
  arch arm: "-arm64"

  version "5.6.0"
  sha256 arm:   "ce0a955e013ea60a929df005822be2cecbb8adc97d84275fd5313c27cedf07f8",
         intel: "97a22a604913f3e7defbec59425959614531223ad03c7f5580ce314c738e60b2"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur

  app "massCode.app"

  zap trash: [
        "~/Library/Application Support/massCode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
