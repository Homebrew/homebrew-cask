cask "font-margarine" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/margarine/Margarine-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Margarine"
  homepage "https://fonts.google.com/specimen/Margarine"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Margarine",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Margarine-Regular.ttf"

  # No zap stanza required
end
