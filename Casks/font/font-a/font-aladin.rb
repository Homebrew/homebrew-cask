cask "font-aladin" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aladin/Aladin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aladin"
  homepage "https://fonts.google.com/specimen/Aladin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aladin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Aladin-Regular.ttf"

  # No zap stanza required
end
