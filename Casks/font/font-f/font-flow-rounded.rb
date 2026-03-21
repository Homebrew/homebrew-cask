cask "font-flow-rounded" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/flowrounded/FlowRounded-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Flow Rounded"
  homepage "https://fonts.google.com/specimen/Flow+Rounded"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Flow Rounded",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FlowRounded-Regular.ttf"

  # No zap stanza required
end
