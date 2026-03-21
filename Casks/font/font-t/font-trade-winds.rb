cask "font-trade-winds" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tradewinds/TradeWinds-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Trade Winds"
  homepage "https://fonts.google.com/specimen/Trade+Winds"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Trade Winds",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TradeWinds-Regular.ttf"

  # No zap stanza required
end
