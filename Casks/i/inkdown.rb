cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "2.0.2"
  sha256 arm:   "48aa7b9d5f640a97edd5aa424a8315dcaf909d79d529c061552c028ccb2dd4eb",
         intel: "0b316849613e468bc98094732d617b18accd8d2b0bec0eb3b5c0b01020f52d29"

  url "https://assets.inkdown.me/release/v#{version}/darwin/#{arch}/Inkdown-mac-#{arch}.dmg"
  name "Inkdown"
  desc "WYSIWYG Markdown editor"
  homepage "https://www.inkdown.me/"

  deprecate! date: "2025-01-25", because: :moved_to_mas
  disable! date: "2026-01-27", because: :moved_to_mas

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Inkdown.app"

  zap trash: [
    "~/Library/Application Support/inkdown",
    "~/Library/Preferences/inkdown.plist",
    "~/Library/Saved Application State/inkdown.savedState",
  ]
end
