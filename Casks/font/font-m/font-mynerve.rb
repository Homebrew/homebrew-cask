cask "font-mynerve" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mynerve/Mynerve-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mynerve"
  homepage "https://fonts.google.com/specimen/Mynerve"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mynerve",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mynerve-Regular.ttf"

  # No zap stanza required
end
