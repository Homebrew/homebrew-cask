cask "font-paprika" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/paprika/Paprika-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Paprika"
  homepage "https://fonts.google.com/specimen/Paprika"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Paprika",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Paprika-Regular.ttf"

  # No zap stanza required
end
