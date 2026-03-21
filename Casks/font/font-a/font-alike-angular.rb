cask "font-alike-angular" do
  version "1.300"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alikeangular/AlikeAngular-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alike Angular"
  homepage "https://fonts.google.com/specimen/Alike+Angular"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alike Angular",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AlikeAngular-Regular.ttf"

  # No zap stanza required
end
