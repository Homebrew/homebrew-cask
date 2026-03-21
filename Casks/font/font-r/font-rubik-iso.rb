cask "font-rubik-iso" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikiso/RubikIso-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Iso"
  homepage "https://fonts.google.com/specimen/Rubik+Iso"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Iso",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikIso-Regular.ttf"

  # No zap stanza required
end
