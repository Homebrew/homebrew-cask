cask "font-freeman" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/freeman/Freeman-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Freeman"
  homepage "https://fonts.google.com/specimen/Freeman"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Freeman",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Freeman-Regular.ttf"

  # No zap stanza required
end
