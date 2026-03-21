cask "font-allison" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allison/Allison-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Allison"
  homepage "https://fonts.google.com/specimen/Allison"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Allison",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Allison-Regular.ttf"

  # No zap stanza required
end
