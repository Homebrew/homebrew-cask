cask "font-bhutuka-expanded-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bhutukaexpandedone/BhuTukaExpandedOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BhuTuka Expanded One"
  homepage "https://fonts.google.com/specimen/BhuTuka+Expanded+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BhuTuka Expanded One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BhuTukaExpandedOne-Regular.ttf"

  # No zap stanza required
end
