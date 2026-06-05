cask "mark-text" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "abfd632dc56723c13b1bc1b8d678222a6719508397fa04c10b2a79acfcde09dc",
         intel: "dd46c77c6e4999cba06d103d0767359f3963f4d68f92be946dd7dd84eff223a1"

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
