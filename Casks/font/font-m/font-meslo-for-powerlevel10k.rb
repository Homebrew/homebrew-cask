cask "font-meslo-for-powerlevel10k" do
  version "2.3.3"
  sha256 "4b0bb4fc457df96d17aa85cfeda4fa92268dbb0651189f2923c68342ebb67cc7"

  url "https://github.com/romkatv/powerlevel10k-media/releases/download/v#{version}/meslo-lgs-nf.tar.gz"
  name "Meslo Nerd Font for Powerlevel10k"
  homepage "https://github.com/romkatv/powerlevel10k-media"

  font "MesloLGS NF Bold Italic.ttf"
  font "MesloLGS NF Bold.ttf"
  font "MesloLGS NF Italic.ttf"
  font "MesloLGS NF Regular.ttf"

  # No zap stanza required
end
