cask "font-montez" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/montez/Montez-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Montez"
  homepage "https://fonts.google.com/specimen/Montez"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Montez",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Montez-Regular.ttf"

  # No zap stanza required
end
