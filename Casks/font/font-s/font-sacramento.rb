cask "font-sacramento" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sacramento/Sacramento-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sacramento"
  homepage "https://fonts.google.com/specimen/Sacramento"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sacramento",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sacramento-Regular.ttf"

  # No zap stanza required
end
