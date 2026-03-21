cask "font-secular-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/secularone/SecularOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Secular One"
  homepage "https://fonts.google.com/specimen/Secular+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Secular One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SecularOne-Regular.ttf"

  # No zap stanza required
end
