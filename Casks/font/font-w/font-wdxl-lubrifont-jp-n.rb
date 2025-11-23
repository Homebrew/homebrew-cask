cask "font-wdxl-lubrifont-jp-n" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wdxllubrifontjpn/WDXLLubrifontJPN-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "WDXL Lubrifont JP N"
  homepage "https://fonts.google.com/specimen/WDXL+Lubrifont+JP+N"

  font "WDXLLubrifontJPN-Regular.ttf"

  # No zap stanza required
end
