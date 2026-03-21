cask "font-eagle-lake" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eaglelake/EagleLake-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Eagle Lake"
  homepage "https://fonts.google.com/specimen/Eagle+Lake"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Eagle Lake",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EagleLake-Regular.ttf"

  # No zap stanza required
end
