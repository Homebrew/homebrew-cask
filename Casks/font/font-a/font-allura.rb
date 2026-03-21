cask "font-allura" do
  version "1.110"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allura/Allura-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Allura"
  homepage "https://fonts.google.com/specimen/Allura"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Allura",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Allura-Regular.ttf"

  # No zap stanza required
end
