cask "font-actor" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/actor/Actor-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Actor"
  homepage "https://fonts.google.com/specimen/Actor"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Actor",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Actor-Regular.ttf"

  # No zap stanza required
end
