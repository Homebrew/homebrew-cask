cask "font-numans" do
  version "001.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/numans/Numans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Numans"
  homepage "https://fonts.google.com/specimen/Numans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Numans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Numans-Regular.ttf"

  # No zap stanza required
end
