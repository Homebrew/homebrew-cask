cask "modmove" do
  version "1.1.1"
  sha256 "81b9cd96050b6bffecccb1ec6ef590a4fc0225c86e96de0a67a482b80c241bf7"

  url "https://github.com/keith/modmove/releases/download/#{version}/ModMove.app.zip"
  name "ModMove"
  desc "Utility to move/resize windows using modifiers and the mouse"
  homepage "https://github.com/keith/modmove"

  app "ModMove.app"
end
