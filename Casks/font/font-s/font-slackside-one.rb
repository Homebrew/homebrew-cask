cask "font-slackside-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/slacksideone/SlacksideOne-Regular.ttf"
  name "Slackside One"
  homepage "https://fonts.google.com/specimen/Slackside+One"

  font "SlacksideOne-Regular.ttf"

  # No zap stanza required
end
