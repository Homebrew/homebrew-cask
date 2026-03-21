cask "font-rubik-glitch-pop" do
  version "2.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikglitchpop/RubikGlitchPop-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Glitch Pop"
  homepage "https://fonts.google.com/specimen/Rubik+Glitch+Pop"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Glitch Pop",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikGlitchPop-Regular.ttf"

  # No zap stanza required
end
