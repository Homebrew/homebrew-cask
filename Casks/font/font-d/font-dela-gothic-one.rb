cask "font-dela-gothic-one" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/delagothicone/DelaGothicOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dela Gothic One"
  homepage "https://fonts.google.com/specimen/Dela+Gothic+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dela Gothic One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DelaGothicOne-Regular.ttf"

  # No zap stanza required
end
