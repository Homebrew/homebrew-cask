cask "font-wellfleet" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wellfleet/Wellfleet-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Wellfleet"
  homepage "https://fonts.google.com/specimen/Wellfleet"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Wellfleet",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Wellfleet-Regular.ttf"

  # No zap stanza required
end
