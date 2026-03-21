cask "font-racing-sans-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/racingsansone/RacingSansOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Racing Sans One"
  homepage "https://fonts.google.com/specimen/Racing+Sans+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Racing Sans One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RacingSansOne-Regular.ttf"

  # No zap stanza required
end
