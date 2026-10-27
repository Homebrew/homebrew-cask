cask "font-playwrite-cz-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteczguides/PlaywriteCZGuides-Regular.ttf"
  name "Playwrite CZ Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CZ+Guides"

  font "PlaywriteCZGuides-Regular.ttf"

  zap :not_required
end
