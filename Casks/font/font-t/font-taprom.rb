cask "font-taprom" do
  version "8.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/taprom/Taprom-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Taprom"
  homepage "https://fonts.google.com/specimen/Taprom"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Taprom",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Taprom-Regular.ttf"

  # No zap stanza required
end
