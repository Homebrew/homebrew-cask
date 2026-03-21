cask "font-federant" do
  version "1.011"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/federant/Federant-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Federant"
  homepage "https://fonts.google.com/specimen/Federant"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Federant",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Federant-Regular.ttf"

  # No zap stanza required
end
