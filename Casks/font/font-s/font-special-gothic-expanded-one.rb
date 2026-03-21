cask "font-special-gothic-expanded-one" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/specialgothicexpandedone/SpecialGothicExpandedOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Special Gothic Expanded One"
  homepage "https://fonts.google.com/specimen/Special+Gothic+Expanded+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Special Gothic Expanded One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SpecialGothicExpandedOne-Regular.ttf"

  # No zap stanza required
end
