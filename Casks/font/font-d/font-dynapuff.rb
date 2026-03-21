cask "font-dynapuff" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dynapuff/DynaPuff%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "DynaPuff"
  homepage "https://fonts.google.com/specimen/DynaPuff"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "DynaPuff",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DynaPuff[wdth,wght].ttf"

  # No zap stanza required
end
