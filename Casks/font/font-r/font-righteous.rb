cask "font-righteous" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/righteous/Righteous-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Righteous"
  homepage "https://fonts.google.com/specimen/Righteous"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Righteous",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Righteous-Regular.ttf"

  # No zap stanza required
end
