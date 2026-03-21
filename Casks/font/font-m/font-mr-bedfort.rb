cask "font-mr-bedfort" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrbedfort/MrBedfort-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mr Bedfort"
  homepage "https://fonts.google.com/specimen/Mr+Bedfort"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mr Bedfort",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MrBedfort-Regular.ttf"

  # No zap stanza required
end
