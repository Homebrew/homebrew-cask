cask "font-itim" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/itim/Itim-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Itim"
  homepage "https://fonts.google.com/specimen/Itim"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Itim",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Itim-Regular.ttf"

  # No zap stanza required
end
