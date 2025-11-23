cask "font-flow-rounded" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/flowrounded/FlowRounded-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Flow Rounded"
  homepage "https://fonts.google.com/specimen/Flow+Rounded"

  font "FlowRounded-Regular.ttf"

  # No zap stanza required
end
