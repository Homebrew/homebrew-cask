cask "font-ponnala" do
  version "1.0.3"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ponnala/Ponnala-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ponnala"
  homepage "https://fonts.google.com/specimen/Ponnala"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ponnala",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ponnala-Regular.ttf"

  # No zap stanza required
end
