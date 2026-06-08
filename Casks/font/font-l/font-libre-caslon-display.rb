cask "font-libre-caslon-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/impallari/Libre-Caslon-Display/archive/refs/heads/master.tar.gz"
  name "Libre Caslon Display"
  homepage "https://github.com/impallari/Libre-Caslon-Display/"

  font "Libre-Caslon-Display-master/fonts/OTF/LibreCaslonDisplay-Regular.otf"

  # No zap stanza required
end
