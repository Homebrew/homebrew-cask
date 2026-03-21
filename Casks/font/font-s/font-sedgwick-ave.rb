cask "font-sedgwick-ave" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sedgwickave/SedgwickAve-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sedgwick Ave"
  homepage "https://fonts.google.com/specimen/Sedgwick+Ave"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sedgwick Ave",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SedgwickAve-Regular.ttf"

  # No zap stanza required
end
