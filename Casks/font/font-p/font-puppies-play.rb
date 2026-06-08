cask "font-puppies-play" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/puppiesplay/PuppiesPlay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Puppies Play"
  homepage "https://fonts.google.com/specimen/Puppies+Play"

  font "PuppiesPlay-Regular.ttf"

  # No zap stanza required
end
