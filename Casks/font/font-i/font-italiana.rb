cask "font-italiana" do
  version "001.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/italiana/Italiana-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Italiana"
  homepage "https://fonts.google.com/specimen/Italiana"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Italiana",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Italiana-Regular.ttf"

  # No zap stanza required
end
