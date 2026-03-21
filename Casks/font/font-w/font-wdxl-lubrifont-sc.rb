cask "font-wdxl-lubrifont-sc" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wdxllubrifontsc/WDXLLubrifontSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "WDXL Lubrifont SC"
  homepage "https://fonts.google.com/specimen/WDXL+Lubrifont+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "WDXL Lubrifont SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WDXLLubrifontSC-Regular.ttf"

  # No zap stanza required
end
