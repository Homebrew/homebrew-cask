cask "font-junge" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/junge/Junge-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Junge"
  homepage "https://fonts.google.com/specimen/Junge"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Junge",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Junge-Regular.ttf"

  # No zap stanza required
end
