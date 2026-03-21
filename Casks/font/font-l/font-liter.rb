cask "font-liter" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/liter/Liter-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Liter"
  homepage "https://fonts.google.com/specimen/Liter"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Liter",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Liter-Regular.ttf"

  # No zap stanza required
end
