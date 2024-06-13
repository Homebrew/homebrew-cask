cask "font-twitter-color-emoji" do
  version "14.0.2"
  sha256 "8e2c6cb768b5a578b1dacb8f70d3b91e782a8098821484af77cf322ac499f28a"

  url "https://github.com/eosrei/twemoji-color-font/releases/download/v#{version}/TwitterColorEmoji-SVGinOT-#{version}.zip"
  name "Twitter Color Emoji"
  homepage "https://github.com/eosrei/twemoji-color-font/"

  font "TwitterColorEmoji-SVGinOT-#{version}/TwitterColorEmoji-SVGinOT.ttf"

  # No zap stanza required
end
