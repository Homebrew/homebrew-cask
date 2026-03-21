cask "font-padyakke-expanded-one" do
  version "1.500"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/padyakkeexpandedone/PadyakkeExpandedOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Padyakke Expanded One"
  homepage "https://fonts.google.com/specimen/Padyakke+Expanded+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Padyakke Expanded One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PadyakkeExpandedOne-Regular.ttf"

  # No zap stanza required
end
