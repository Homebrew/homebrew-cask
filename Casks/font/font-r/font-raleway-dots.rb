cask "font-raleway-dots" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ralewaydots/RalewayDots-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Raleway Dots"
  homepage "https://fonts.google.com/specimen/Raleway+Dots"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Raleway Dots",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RalewayDots-Regular.ttf"

  # No zap stanza required
end
