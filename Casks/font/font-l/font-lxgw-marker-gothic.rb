cask "font-lxgw-marker-gothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lxgwmarkergothic/LXGWMarkerGothic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "LXGW Marker Gothic"
  homepage "https://fonts.google.com/specimen/LXGW+Marker+Gothic"

  font "LXGWMarkerGothic-Regular.ttf"

  # No zap stanza required
end
