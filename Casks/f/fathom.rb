cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.7.1"
  sha256 arm:   "1c61283236e09588c94ca9e5d4955e8a78d3832376a4fe11a46527e729f7430b",
         intel: "4eaee9952c1d8c35603f42e09f0e3ca905e49391eda444e2931ede126132f983"

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
