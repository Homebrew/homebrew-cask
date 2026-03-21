cask "font-slackside-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/slacksideone/SlacksideOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Slackside One"
  homepage "https://fonts.google.com/specimen/Slackside+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Slackside One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SlacksideOne-Regular.ttf"

  # No zap stanza required
end
