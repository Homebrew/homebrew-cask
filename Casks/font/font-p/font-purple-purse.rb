cask "font-purple-purse" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/purplepurse/PurplePurse-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Purple Purse"
  homepage "https://fonts.google.com/specimen/Purple+Purse"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Purple Purse",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PurplePurse-Regular.ttf"

  # No zap stanza required
end
