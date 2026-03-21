cask "font-jersey-25" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey25/Jersey25-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 25"
  homepage "https://fonts.google.com/specimen/Jersey+25"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jersey 25",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jersey25-Regular.ttf"

  # No zap stanza required
end
