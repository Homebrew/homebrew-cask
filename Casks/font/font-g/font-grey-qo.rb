cask "font-grey-qo" do
  version "2.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/greyqo/GreyQo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Grey Qo"
  homepage "https://fonts.google.com/specimen/Grey+Qo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Grey Qo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GreyQo-Regular.ttf"

  # No zap stanza required
end
