cask "font-waterfall" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/waterfall/Waterfall-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Waterfall"
  homepage "https://fonts.google.com/specimen/Waterfall"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Waterfall",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Waterfall-Regular.ttf"

  # No zap stanza required
end
