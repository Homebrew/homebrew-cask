cask "font-edlo" do
  version :latest
  sha256 :no_check

  url "https://github.com/ehamiter/Edlo/raw/master/edlo.ttf",
      verified: "github.com/ehamiter/Edlo/"
  name "Edlo"
  homepage "https://ehamiter.github.io/Edlo/"

  font "edlo.ttf"

  # No zap stanza required
end
