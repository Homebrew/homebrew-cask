cask "font-antonio" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/antonio/Antonio%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Antonio"
  homepage "https://fonts.google.com/specimen/Antonio"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Antonio",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Antonio[wght].ttf"

  # No zap stanza required
end
