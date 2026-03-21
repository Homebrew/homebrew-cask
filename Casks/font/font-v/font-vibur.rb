cask "font-vibur" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vibur/Vibur-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vibur"
  homepage "https://fonts.google.com/specimen/Vibur"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vibur",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Vibur-Regular.ttf"

  # No zap stanza required
end
