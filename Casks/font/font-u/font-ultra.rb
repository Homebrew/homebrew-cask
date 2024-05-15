cask "font-ultra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/ultra/Ultra-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ultra"
  desc "Ultra bold slab typeface with nods to wood type styles like clarendon and egyptian"
  homepage "https://fonts.google.com/specimen/Ultra"

  font "Ultra-Regular.ttf"

  # No zap stanza required
end
