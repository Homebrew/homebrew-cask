cask "font-bebas-neue" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bebasneue/BebasNeue-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bebas Neue"
  homepage "https://fonts.google.com/specimen/Bebas+Neue"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bebas Neue",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BebasNeue-Regular.ttf"

  # No zap stanza required
end
