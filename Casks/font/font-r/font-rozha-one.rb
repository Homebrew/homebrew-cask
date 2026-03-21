cask "font-rozha-one" do
  version "1.301"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rozhaone/RozhaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rozha One"
  homepage "https://fonts.google.com/specimen/Rozha+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rozha One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RozhaOne-Regular.ttf"

  # No zap stanza required
end
