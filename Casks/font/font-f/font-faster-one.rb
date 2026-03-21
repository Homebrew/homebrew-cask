cask "font-faster-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fasterone/FasterOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Faster One"
  homepage "https://fonts.google.com/specimen/Faster+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Faster One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FasterOne-Regular.ttf"

  # No zap stanza required
end
