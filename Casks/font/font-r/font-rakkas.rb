cask "font-rakkas" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rakkas/Rakkas-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rakkas"
  homepage "https://fonts.google.com/specimen/Rakkas"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rakkas",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rakkas-Regular.ttf"

  # No zap stanza required
end
