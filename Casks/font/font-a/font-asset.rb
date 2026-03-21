cask "font-asset" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/asset/Asset-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Asset"
  homepage "https://fonts.google.com/specimen/Asset"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Asset",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Asset-Regular.ttf"

  # No zap stanza required
end
