cask "font-jomhuria" do
  version "1.0010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jomhuria/Jomhuria-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jomhuria"
  homepage "https://fonts.google.com/specimen/Jomhuria"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jomhuria",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jomhuria-Regular.ttf"

  # No zap stanza required
end
