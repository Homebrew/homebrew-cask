cask "font-beth-ellen" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bethellen/BethEllen-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Beth Ellen"
  homepage "https://fonts.google.com/specimen/Beth+Ellen"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Beth Ellen",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BethEllen-Regular.ttf"

  # No zap stanza required
end
