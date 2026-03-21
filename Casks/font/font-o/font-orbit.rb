cask "font-orbit" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/orbit/Orbit-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Orbit"
  homepage "https://fonts.google.com/specimen/Orbit"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Orbit",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Orbit-Regular.ttf"

  # No zap stanza required
end
