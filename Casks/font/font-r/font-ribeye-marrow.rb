cask "font-ribeye-marrow" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ribeyemarrow/RibeyeMarrow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ribeye Marrow"
  homepage "https://fonts.google.com/specimen/Ribeye+Marrow"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ribeye Marrow",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RibeyeMarrow-Regular.ttf"

  # No zap stanza required
end
