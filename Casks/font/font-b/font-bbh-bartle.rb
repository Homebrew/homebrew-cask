cask "font-bbh-bartle" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhbartle/BBHBartle-Regular.ttf"
  name "BBH Bartle"
  homepage "https://github.com/Studio-DRAMA/BBH"

  font "BBHBartle-Regular.ttf"

  # No zap stanza required
end
