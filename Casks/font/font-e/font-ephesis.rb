cask "font-ephesis" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ephesis/Ephesis-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ephesis"
  homepage "https://fonts.google.com/specimen/Ephesis"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ephesis",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ephesis-Regular.ttf"

  # No zap stanza required
end
