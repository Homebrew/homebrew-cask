cask "font-almendra-display" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/almendradisplay/AlmendraDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Almendra Display"
  homepage "https://fonts.google.com/specimen/Almendra+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Almendra Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AlmendraDisplay-Regular.ttf"

  # No zap stanza required
end
