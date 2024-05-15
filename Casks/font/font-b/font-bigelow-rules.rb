cask "font-bigelow-rules" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigelowrules/BigelowRules-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bigelow Rules"
  homepage "https://fonts.google.com/specimen/Bigelow+Rules"

  font "BigelowRules-Regular.ttf"

  # No zap stanza required
end
