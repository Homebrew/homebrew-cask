cask "font-sriracha" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sriracha/Sriracha-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sriracha"
  homepage "https://fonts.google.com/specimen/Sriracha"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sriracha",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sriracha-Regular.ttf"

  # No zap stanza required
end
