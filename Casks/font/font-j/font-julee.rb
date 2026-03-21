cask "font-julee" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/julee/Julee-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Julee"
  homepage "https://fonts.google.com/specimen/Julee"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Julee",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Julee-Regular.ttf"

  # No zap stanza required
end
