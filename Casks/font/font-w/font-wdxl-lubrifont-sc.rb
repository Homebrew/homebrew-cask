cask "font-wdxl-lubrifont-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wdxllubrifontsc/WDXLLubrifontSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "WDXL Lubrifont SC"
  homepage "https://fonts.google.com/specimen/WDXL+Lubrifont+SC"

  font "WDXLLubrifontSC-Regular.ttf"

  # No zap stanza required
end
