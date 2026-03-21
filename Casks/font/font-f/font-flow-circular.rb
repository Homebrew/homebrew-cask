cask "font-flow-circular" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/flowcircular/FlowCircular-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Flow Circular"
  homepage "https://fonts.google.com/specimen/Flow+Circular"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Flow Circular",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FlowCircular-Regular.ttf"

  # No zap stanza required
end
