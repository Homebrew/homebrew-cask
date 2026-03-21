cask "font-titan-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/titanone/TitanOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Titan One"
  homepage "https://fonts.google.com/specimen/Titan+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Titan One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TitanOne-Regular.ttf"

  # No zap stanza required
end
