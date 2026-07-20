cask "mark-text" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "f5a8630b4ec14f7bf1120a7a17a1ed397430d30c57f2c6c2c6a39410417f66ce",
         intel: "d1831a5dce3d957d26dcf9710869f4b7e1df1bc9c2dcd0cb6539e29e96f71779"

  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-mac-#{arch}-#{version}.dmg"
  name "MarkText"
  desc "Markdown editor"
  homepage "https://github.com/marktext/marktext"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: :monterey

  app "MarkText.app"

  zap trash: [
    "~/Library/Application Support/marktext",
    "~/Library/Logs/marktext",
    "~/Library/Preferences/com.github.marktext.marktext.plist",
    "~/Library/Saved Application State/com.github.marktext.marktext.savedState",
  ]
end
