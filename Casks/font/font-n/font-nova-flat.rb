cask "font-nova-flat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novaflat/NovaFlat.ttf"
  name "Nova Flat"
  homepage "https://fonts.google.com/specimen/Nova+Flat"

  font "NovaFlat.ttf"

  zap :not_required
end
