cask "font-trade-winds" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tradewinds/TradeWinds-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Trade Winds"
  homepage "https://fonts.google.com/specimen/Trade+Winds"

  font "TradeWinds-Regular.ttf"

  # No zap stanza required
end
