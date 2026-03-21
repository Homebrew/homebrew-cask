cask "font-aboreto" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aboreto/Aboreto-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aboreto"
  homepage "https://fonts.google.com/specimen/Aboreto"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aboreto",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Aboreto-Regular.ttf"

  # No zap stanza required
end
