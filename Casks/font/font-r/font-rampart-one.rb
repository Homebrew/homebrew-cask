cask "font-rampart-one" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rampartone/RampartOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rampart One"
  homepage "https://fonts.google.com/specimen/Rampart+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rampart One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RampartOne-Regular.ttf"

  # No zap stanza required
end
