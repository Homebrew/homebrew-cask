cask "font-send-flowers" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sendflowers/SendFlowers-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Send Flowers"
  homepage "https://fonts.google.com/specimen/Send+Flowers"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Send Flowers",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SendFlowers-Regular.ttf"

  # No zap stanza required
end
