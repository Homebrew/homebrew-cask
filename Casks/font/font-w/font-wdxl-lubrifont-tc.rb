cask "font-wdxl-lubrifont-tc" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wdxllubrifonttc/WDXLLubrifontTC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "WDXL Lubrifont TC"
  homepage "https://fonts.google.com/specimen/WDXL+Lubrifont+TC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "WDXL Lubrifont TC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WDXLLubrifontTC-Regular.ttf"

  # No zap stanza required
end
