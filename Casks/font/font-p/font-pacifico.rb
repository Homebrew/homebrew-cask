cask "font-pacifico" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pacifico/Pacifico-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pacifico"
  homepage "https://fonts.google.com/specimen/Pacifico"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pacifico",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Pacifico-Regular.ttf"

  # No zap stanza required
end
