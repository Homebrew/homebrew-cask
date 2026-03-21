cask "font-seaweed-script" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/seaweedscript/SeaweedScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Seaweed Script"
  homepage "https://fonts.google.com/specimen/Seaweed+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Seaweed Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SeaweedScript-Regular.ttf"

  # No zap stanza required
end
