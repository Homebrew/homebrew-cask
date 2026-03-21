cask "font-slabo-27px" do
  version "1.02"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/slabo27px/Slabo27px-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Slabo 27px"
  homepage "https://fonts.google.com/specimen/Slabo+27px"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Slabo 27px",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Slabo27px-Regular.ttf"

  # No zap stanza required
end
