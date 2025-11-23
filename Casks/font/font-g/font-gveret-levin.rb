cask "font-gveret-levin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gveretlevin/GveretLevin-Regular.ttf"
  name "Gveret Levin"
  homepage "https://github.com/AlefAlefAlef/gveret-levin"

  font "GveretLevin-Regular.ttf"

  # No zap stanza required
end
