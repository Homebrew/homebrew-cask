cask "font-wdxl-lubrifont-jp-n" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wdxllubrifontjpn/WDXLLubrifontJPN-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "WDXL Lubrifont JP N"
  homepage "https://fonts.google.com/specimen/WDXL+Lubrifont+JP+N"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "WDXL Lubrifont JP N",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WDXLLubrifontJPN-Regular.ttf"

  # No zap stanza required
end
