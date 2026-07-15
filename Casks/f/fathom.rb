cask "fathom" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "37aa9a28c2b834e4b334f985d28e91abe9116f77ebe61489271c657055839169",
         intel: "d766777f64b28ddd8d3126d3a03a86f7f32e81fce98fdc1c30cee7c9e69e455e"

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
