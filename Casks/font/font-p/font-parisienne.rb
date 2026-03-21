cask "font-parisienne" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/parisienne/Parisienne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Parisienne"
  homepage "https://fonts.google.com/specimen/Parisienne"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Parisienne",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Parisienne-Regular.ttf"

  # No zap stanza required
end
