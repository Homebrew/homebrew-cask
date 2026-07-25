cask "font-fascinate-inline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fascinateinline/FascinateInline-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fascinate Inline"
  homepage "https://fonts.google.com/specimen/Fascinate+Inline"

  font "FascinateInline-Regular.ttf"

  # No zap stanza required
end
