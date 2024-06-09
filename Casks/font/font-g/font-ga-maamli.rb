cask "font-ga-maamli" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gamaamli/GaMaamli-Regular.ttf"
  name "Ga Maamli"
  desc "All caps design in which the lowercase letters are also using a capital letter construction"
  homepage "https://github.com/SorkinType/GaMaamli"

  font "GaMaamli-Regular.ttf"

  # No zap stanza required
end
