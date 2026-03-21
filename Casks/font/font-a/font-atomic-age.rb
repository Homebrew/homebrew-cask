cask "font-atomic-age" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/atomicage/AtomicAge-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Atomic Age"
  homepage "https://fonts.google.com/specimen/Atomic+Age"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Atomic Age",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AtomicAge-Regular.ttf"

  # No zap stanza required
end
