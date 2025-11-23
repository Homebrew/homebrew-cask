cask "font-alef" do
  version :latest
  sha256 :no_check

  url "http://alef.hagilda.com/Alef.zip"
  name "Alef"
  homepage "http://alef.hagilda.com/"

  font "TTF/Alef-Bold.ttf"
  font "TTF/Alef-Regular.ttf"

  # No zap stanza required
end
