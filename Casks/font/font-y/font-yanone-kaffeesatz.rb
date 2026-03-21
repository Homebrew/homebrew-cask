cask "font-yanone-kaffeesatz" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yanonekaffeesatz/YanoneKaffeesatz%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Yanone Kaffeesatz"
  homepage "https://fonts.google.com/specimen/Yanone+Kaffeesatz"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yanone Kaffeesatz",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YanoneKaffeesatz[wght].ttf"

  # No zap stanza required
end
