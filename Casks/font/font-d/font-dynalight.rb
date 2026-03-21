cask "font-dynalight" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dynalight/Dynalight-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dynalight"
  homepage "https://fonts.google.com/specimen/Dynalight"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dynalight",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Dynalight-Regular.ttf"

  # No zap stanza required
end
