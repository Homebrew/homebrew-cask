cask "font-jaini" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jaini/Jaini-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jaini"
  homepage "https://fonts.google.com/specimen/Jaini"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jaini",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jaini-Regular.ttf"

  # No zap stanza required
end
