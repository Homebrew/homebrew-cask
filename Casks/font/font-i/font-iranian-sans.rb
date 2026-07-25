cask "font-iranian-sans" do
  version :latest
  sha256 :no_check

  url "https://fontlibrary.org/assets/downloads/iranian-sans/2619cbcea5e87e4bb3d77b2e2a94466f/iranian-sans.zip"
  name "Iranian Sans"
  homepage "https://fontlibrary.org/en/font/iranian-sans"

  font "irsans.ttf"
  font "irsansb.ttf"

  # No zap stanza required
end
