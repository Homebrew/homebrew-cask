cask "font-princess-sofia" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/princesssofia/PrincessSofia-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Princess Sofia"
  homepage "https://fonts.google.com/specimen/Princess+Sofia"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Princess Sofia",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PrincessSofia-Regular.ttf"

  # No zap stanza required
end
