cask "font-fascinate" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fascinate/Fascinate-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fascinate"
  homepage "https://fonts.google.com/specimen/Fascinate"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fascinate",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Fascinate-Regular.ttf"

  # No zap stanza required
end
