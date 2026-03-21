cask "font-lobster" do
  version "2.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lobster/Lobster-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lobster"
  homepage "https://fonts.google.com/specimen/Lobster"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lobster",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Lobster-Regular.ttf"

  # No zap stanza required
end
