cask "font-edlo" do
  version :latest
  sha256 :no_check

  url "https://github.com/ehamiter/Edlo/archive/refs/heads/master.tar.gz",
      verified: "github.com/ehamiter/Edlo/"
  name "Edlo"
  homepage "https://ehamiter.github.io/Edlo/"

  font "Edlo-master/edlo.ttf"
  font "Edlo-master/edlo-nerd-font.ttf"

  # No zap stanza required
end
