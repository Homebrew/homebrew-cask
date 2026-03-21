cask "font-rye" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rye/Rye-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rye"
  homepage "https://fonts.google.com/specimen/Rye"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rye",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rye-Regular.ttf"

  # No zap stanza required
end
