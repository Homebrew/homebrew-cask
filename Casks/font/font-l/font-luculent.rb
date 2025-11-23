cask "font-luculent" do
  version :latest
  sha256 :no_check

  url "http://eastfarthing.com/luculent/luculent.tar.xz"
  name "Luculent"
  homepage "http://eastfarthing.com/luculent/"

  font "luculent/luculent.ttf"
  font "luculent/luculentb.ttf"
  font "luculent/luculentbi.ttf"
  font "luculent/luculenti.ttf"

  # No zap stanza required
end
