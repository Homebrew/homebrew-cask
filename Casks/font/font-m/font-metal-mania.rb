cask "font-metal-mania" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/metalmania/MetalMania-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Metal Mania"
  homepage "https://fonts.google.com/specimen/Metal+Mania"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Metal Mania",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MetalMania-Regular.ttf"

  # No zap stanza required
end
