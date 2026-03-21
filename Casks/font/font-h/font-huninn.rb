cask "font-huninn" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/huninn/Huninn-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Huninn"
  homepage "https://fonts.google.com/specimen/Huninn"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Huninn",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Huninn-Regular.ttf"

  # No zap stanza required
end
