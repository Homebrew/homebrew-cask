cask "font-lxgw-marker-gothic" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lxgwmarkergothic/LXGWMarkerGothic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "LXGW Marker Gothic"
  homepage "https://fonts.google.com/specimen/LXGW+Marker+Gothic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "LXGW Marker Gothic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LXGWMarkerGothic-Regular.ttf"

  # No zap stanza required
end
