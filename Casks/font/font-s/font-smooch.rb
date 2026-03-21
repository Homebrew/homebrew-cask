cask "font-smooch" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/smooch/Smooch-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Smooch"
  homepage "https://fonts.google.com/specimen/Smooch"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Smooch",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Smooch-Regular.ttf"

  # No zap stanza required
end
