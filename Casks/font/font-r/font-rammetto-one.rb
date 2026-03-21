cask "font-rammetto-one" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rammettoone/RammettoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rammetto One"
  homepage "https://fonts.google.com/specimen/Rammetto+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rammetto One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RammettoOne-Regular.ttf"

  # No zap stanza required
end
