cask "font-francois-one" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/francoisone/FrancoisOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Francois One"
  homepage "https://fonts.google.com/specimen/Francois+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Francois One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FrancoisOne-Regular.ttf"

  # No zap stanza required
end
