cask "font-mrs-saint-delafield" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrssaintdelafield/MrsSaintDelafield-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mrs Saint Delafield"
  homepage "https://fonts.google.com/specimen/Mrs+Saint+Delafield"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mrs Saint Delafield",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MrsSaintDelafield-Regular.ttf"

  # No zap stanza required
end
