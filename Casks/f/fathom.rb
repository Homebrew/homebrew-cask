cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.3.2"
  sha256 arm:   "0e66e294afa5dea5ac2c8ab4d3948ad1075df9160cdc42e052acf3e9474cfdb5",
         intel: "534624bab59a565342e7165da046f650bdc7c565a7f330c2d32b7dae8037ca24"

  url "https://electron-update.fathom.video/download/file/Fathom-darwin-#{arch}-#{version}.dmg"
  name "Fathom"
  desc "Record and transcribe video conferences"
  homepage "https://fathom.video/"

  livecheck do
    url "https://electron-update.fathom.video/"
    regex(%r{href=.*?/releases/tag/v?(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: :monterey

  app "Fathom.app"

  uninstall quit: [
    "Fathom Helper",
    "Fathom",
  ]

  zap trash: [
    "~/Library/Application Support/Fathom",
    "~/Library/Logs/Fathom",
  ]
end
