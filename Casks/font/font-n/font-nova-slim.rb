cask "font-nova-slim" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novaslim/NovaSlim.ttf"
  name "Nova Slim"
  homepage "https://fonts.google.com/specimen/Nova+Slim"

  font "NovaSlim.ttf"

  zap :not_required
end
