cask "font-constructium" do
  version "2026-02-08"
  sha256 "42ee8d36c1386e58c0343ed124cce76c6bac9b68196fc6ac3f2bbf2450fd6dc3"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/Constructium.zip",
      verified: "github.com/kreativekorp/open-relay/"
  name "Constructium"
  homepage "https://www.kreativekorp.com/software/fonts/constructium/"

  font "Constructium.ttf"

  # No zap stanza required
end
