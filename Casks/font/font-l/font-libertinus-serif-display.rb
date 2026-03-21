cask "font-libertinus-serif-display" do
  version "7.051"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinusserifdisplay/LibertinusSerifDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libertinus Serif Display"
  homepage "https://fonts.google.com/specimen/Libertinus+Serif+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libertinus Serif Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibertinusSerifDisplay-Regular.ttf"

  # No zap stanza required
end
