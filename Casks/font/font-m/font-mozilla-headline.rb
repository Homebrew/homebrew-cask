cask "font-mozilla-headline" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mozillaheadline/MozillaHeadline%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Mozilla Headline"
  homepage "https://fonts.google.com/specimen/Mozilla+Headline"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mozilla Headline",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MozillaHeadline[wdth,wght].ttf"

  # No zap stanza required
end
