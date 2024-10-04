cask "font-twitter-color-emoji" do
  version "15.0.3"
  sha256 "f96d2c9c54b7dc868749e90a2dcb0b060c592de9388763a18ff0a95bee9bbf8c"

  url "https://github.com/eosrei/twemoji-color-font/releases/download/v#{version}/TwitterColorEmoji-SVGinOT-#{version}.zip"
  name "Twitter Color Emoji"
  homepage "https://github.com/eosrei/twemoji-color-font/"

  font "TwitterColorEmoji-SVGinOT-#{version}/TwitterColorEmoji-SVGinOT.ttf"

  # No zap stanza required
end
