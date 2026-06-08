cask "font-flow-block" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/flowblock/FlowBlock-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Flow Block"
  homepage "https://fonts.google.com/specimen/Flow+Block"

  font "FlowBlock-Regular.ttf"

  # No zap stanza required
end
