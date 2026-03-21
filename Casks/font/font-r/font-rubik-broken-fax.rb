cask "font-rubik-broken-fax" do
  version "2.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikbrokenfax/RubikBrokenFax-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Broken Fax"
  homepage "https://fonts.google.com/specimen/Rubik+Broken+Fax"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Broken Fax",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikBrokenFax-Regular.ttf"

  # No zap stanza required
end
