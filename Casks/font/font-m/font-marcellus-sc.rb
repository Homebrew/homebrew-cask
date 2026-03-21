cask "font-marcellus-sc" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marcellussc/MarcellusSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marcellus SC"
  homepage "https://fonts.google.com/specimen/Marcellus+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Marcellus SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MarcellusSC-Regular.ttf"

  # No zap stanza required
end
