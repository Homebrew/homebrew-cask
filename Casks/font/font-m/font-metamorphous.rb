cask "font-metamorphous" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/metamorphous/Metamorphous-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Metamorphous"
  homepage "https://fonts.google.com/specimen/Metamorphous"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Metamorphous",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Metamorphous-Regular.ttf"

  # No zap stanza required
end
