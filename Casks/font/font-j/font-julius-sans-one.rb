cask "font-julius-sans-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/juliussansone/JuliusSansOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Julius Sans One"
  homepage "https://fonts.google.com/specimen/Julius+Sans+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Julius Sans One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JuliusSansOne-Regular.ttf"

  # No zap stanza required
end
