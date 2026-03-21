cask "font-varela-round" do
  version "3.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/varelaround/VarelaRound-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Varela Round"
  homepage "https://fonts.google.com/specimen/Varela+Round"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Varela Round",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "VarelaRound-Regular.ttf"

  # No zap stanza required
end
