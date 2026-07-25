cask "font-jf-open-huninn" do
  version "2.1"
  sha256 "9d5bf4932d31fe94c18cd8cfddc98bc1b14ce10f4e354c682179db290a99c825"

  url "https://github.com/justfont/open-huninn-font/releases/download/v#{version}/jf-openhuninn-#{version}.ttf",
      verified: "github.com/justfont/open-huninn-font/"
  name "jf open huninn"
  name "jf open 粉圓"
  homepage "https://justfont.com/huninn/"

  font "jf-openhuninn-#{version}.ttf"

  # No zap stanza required
end
