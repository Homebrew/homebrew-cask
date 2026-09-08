cask "font-edlo" do
  version :latest
  sha256 :no_check

  url "https://github.com/ehamiter/Edlo/archive/refs/heads/master.tar.gz"
  name "Edlo"
  homepage "https://ehamiter.github.io/Edlo/"

  font "Edlo-master/edlo-nerd-font.ttf"
  font "Edlo-master/edlo.ttf"

  # No zap stanza required
end
