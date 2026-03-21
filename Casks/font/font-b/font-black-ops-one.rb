cask "font-black-ops-one" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blackopsone/BlackOpsOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Black Ops One"
  homepage "https://fonts.google.com/specimen/Black+Ops+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Black Ops One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BlackOpsOne-Regular.ttf"

  # No zap stanza required
end
