cask "font-kaushan-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kaushanscript/KaushanScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kaushan Script"
  homepage "https://fonts.google.com/specimen/Kaushan+Script"

  font "KaushanScript-Regular.ttf"

  # No zap stanza required
end
