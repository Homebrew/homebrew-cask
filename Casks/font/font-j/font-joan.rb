cask "font-joan" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/joan/Joan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Joan"
  homepage "https://fonts.google.com/specimen/Joan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Joan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Joan-Regular.ttf"

  # No zap stanza required
end
