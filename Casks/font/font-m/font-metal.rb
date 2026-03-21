cask "font-metal" do
  version "8.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/metal/Metal-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Metal"
  homepage "https://fonts.google.com/specimen/Metal"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Metal",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Metal-Regular.ttf"

  # No zap stanza required
end
