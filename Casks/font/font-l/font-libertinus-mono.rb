cask "font-libertinus-mono" do
  version "7.051"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinusmono/LibertinusMono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libertinus Mono"
  homepage "https://fonts.google.com/specimen/Libertinus+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libertinus Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibertinusMono-Regular.ttf"

  # No zap stanza required
end
