cask "font-yuji-boku" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujiboku/YujiBoku-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuji Boku"
  homepage "https://fonts.google.com/specimen/Yuji+Boku"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yuji Boku",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YujiBoku-Regular.ttf"

  # No zap stanza required
end
