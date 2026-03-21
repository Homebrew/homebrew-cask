cask "font-fasthand" do
  version "8.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fasthand/Fasthand-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fasthand"
  homepage "https://fonts.google.com/specimen/Fasthand"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fasthand",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Fasthand-Regular.ttf"

  # No zap stanza required
end
