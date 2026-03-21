cask "font-delicious-handrawn" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/delicioushandrawn/DeliciousHandrawn-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Delicious Handrawn"
  homepage "https://fonts.google.com/specimen/Delicious+Handrawn"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Delicious Handrawn",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DeliciousHandrawn-Regular.ttf"

  # No zap stanza required
end
