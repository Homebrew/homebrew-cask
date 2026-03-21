cask "font-fascinate-inline" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fascinateinline/FascinateInline-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fascinate Inline"
  homepage "https://fonts.google.com/specimen/Fascinate+Inline"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fascinate Inline",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FascinateInline-Regular.ttf"

  # No zap stanza required
end
