cask "font-grechen-fuemen" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/grechenfuemen/GrechenFuemen-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Grechen Fuemen"
  homepage "https://fonts.google.com/specimen/Grechen+Fuemen"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Grechen Fuemen",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GrechenFuemen-Regular.ttf"

  # No zap stanza required
end
