cask "font-flow-block" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/flowblock/FlowBlock-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Flow Block"
  homepage "https://fonts.google.com/specimen/Flow+Block"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Flow Block",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FlowBlock-Regular.ttf"

  # No zap stanza required
end
