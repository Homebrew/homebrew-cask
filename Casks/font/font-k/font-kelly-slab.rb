cask "font-kelly-slab" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kellyslab/KellySlab-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kelly Slab"
  homepage "https://fonts.google.com/specimen/Kelly+Slab"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kelly Slab",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KellySlab-Regular.ttf"

  # No zap stanza required
end
