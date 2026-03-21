cask "font-fugaz-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fugazone/FugazOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fugaz One"
  homepage "https://fonts.google.com/specimen/Fugaz+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fugaz One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FugazOne-Regular.ttf"

  # No zap stanza required
end
