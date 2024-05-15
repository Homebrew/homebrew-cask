cask "font-inconsolata-g" do
  version :latest
  sha256 :no_check

  url "http://www.fantascienza.net/leonardo/ar/inconsolatag/inconsolata-g_font.zip",
      verified: "fantascienza.net/leonardo/ar/inconsolatag/"
  name "Inconsolata-g"
  homepage "https://leonardo-m.livejournal.com/77079.html"

  font "Inconsolata-g.otf"

  # No zap stanza required
end
