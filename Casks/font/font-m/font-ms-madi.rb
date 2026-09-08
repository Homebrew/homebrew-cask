cask "font-ms-madi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/msmadi/MsMadi-Regular.ttf"
  name "Ms Madi"
  homepage "https://fonts.google.com/specimen/Ms+Madi"

  font "MsMadi-Regular.ttf"

  # No zap stanza required
end
