cask "font-strait" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/strait/Strait-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Strait"
  homepage "https://fonts.google.com/specimen/Strait"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Strait",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Strait-Regular.ttf"

  # No zap stanza required
end
