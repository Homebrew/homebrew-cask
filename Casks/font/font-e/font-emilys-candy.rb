cask "font-emilys-candy" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/emilyscandy/EmilysCandy-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Emilys Candy"
  homepage "https://fonts.google.com/specimen/Emilys+Candy"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Emilys Candy",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EmilysCandy-Regular.ttf"

  # No zap stanza required
end
