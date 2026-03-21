cask "font-climate-crisis" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/climatecrisis/ClimateCrisis%5BYEAR%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Climate Crisis"
  homepage "https://fonts.google.com/specimen/Climate+Crisis"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Climate Crisis",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ClimateCrisis[YEAR].ttf"

  # No zap stanza required
end
