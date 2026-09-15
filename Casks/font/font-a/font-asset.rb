cask "font-asset" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/asset/Asset-Regular.ttf"
  name "Asset"
  homepage "https://fonts.google.com/specimen/Asset"

  font "Asset-Regular.ttf"

  # No zap stanza required
end
