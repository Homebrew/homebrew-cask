cask "font-wdxl-lubrifont-tc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wdxllubrifonttc/WDXLLubrifontTC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "WDXL Lubrifont TC"
  homepage "https://fonts.google.com/specimen/WDXL+Lubrifont+TC"

  font "WDXLLubrifontTC-Regular.ttf"

  # No zap stanza required
end
