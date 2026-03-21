cask "font-neucha" do
  version "001.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/neucha/Neucha.ttf",
      verified: "github.com/google/fonts/"
  name "Neucha"
  homepage "https://fonts.google.com/specimen/Neucha"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Neucha",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Neucha.ttf"

  # No zap stanza required
end
