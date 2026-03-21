cask "font-monofett" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monofett/Monofett-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Monofett"
  homepage "https://fonts.google.com/specimen/Monofett"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Monofett",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Monofett-Regular.ttf"

  # No zap stanza required
end
