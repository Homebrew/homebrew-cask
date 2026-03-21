cask "font-kirang-haerang" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kiranghaerang/KirangHaerang-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kirang Haerang"
  homepage "https://fonts.google.com/specimen/Kirang+Haerang"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kirang Haerang",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KirangHaerang-Regular.ttf"

  # No zap stanza required
end
