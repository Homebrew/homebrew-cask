cask "font-wire-one" do
  version "1.102"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wireone/WireOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Wire One"
  homepage "https://fonts.google.com/specimen/Wire+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Wire One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WireOne-Regular.ttf"

  # No zap stanza required
end
