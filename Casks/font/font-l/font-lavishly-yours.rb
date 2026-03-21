cask "font-lavishly-yours" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lavishlyyours/LavishlyYours-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lavishly Yours"
  homepage "https://fonts.google.com/specimen/Lavishly+Yours"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lavishly Yours",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LavishlyYours-Regular.ttf"

  # No zap stanza required
end
