cask "font-tapestry" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tapestry/Tapestry-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tapestry"
  homepage "https://fonts.google.com/specimen/Tapestry"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tapestry",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tapestry-Regular.ttf"

  # No zap stanza required
end
