cask "font-coiny" do
  version "001.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/coiny/Coiny-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Coiny"
  homepage "https://fonts.google.com/specimen/Coiny"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Coiny",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Coiny-Regular.ttf"

  # No zap stanza required
end
