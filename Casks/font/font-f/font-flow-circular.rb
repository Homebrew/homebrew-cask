cask "font-flow-circular" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/flowcircular/FlowCircular-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Flow Circular"
  homepage "https://fonts.google.com/specimen/Flow+Circular"

  font "FlowCircular-Regular.ttf"

  # No zap stanza required
end
