cask "font-my-soul" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mysoul/MySoul-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "My Soul"
  homepage "https://fonts.google.com/specimen/My+Soul"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "My Soul",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MySoul-Regular.ttf"

  # No zap stanza required
end
