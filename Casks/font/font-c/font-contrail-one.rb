cask "font-contrail-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/contrailone/ContrailOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Contrail One"
  homepage "https://fonts.google.com/specimen/Contrail+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Contrail One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ContrailOne-Regular.ttf"

  # No zap stanza required
end
