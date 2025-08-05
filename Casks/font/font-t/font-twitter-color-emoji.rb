cask "font-twitter-color-emoji" do
  version "15.1.0"
  sha256 "9075de7a1c9dd660782d02b5c5be1c1524e16db13a6d7d4264b9aabbd056b692"

  url "https://github.com/eosrei/twemoji-color-font/releases/download/v#{version}/TwitterColorEmoji-SVGinOT-#{version}.zip"
  name "Twitter Color Emoji"
  homepage "https://github.com/eosrei/twemoji-color-font/"

  font "TwitterColorEmoji-SVGinOT-#{version}/TwitterColorEmoji-SVGinOT.ttf"

  # No zap stanza required
end
