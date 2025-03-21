cask "font-constructium" do
  version "2025-03-20"
  sha256 "2ffa30cae61bac79a03827a12e48db8f88691f2c0655f1ef376b8ec9cdf788c2"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/Constructium.zip",
      verified: "github.com/kreativekorp/open-relay/"
  name "Constructium"
  homepage "https://www.kreativekorp.com/software/fonts/constructium/"

  font "Constructium.ttf"

  # No zap stanza required
end
