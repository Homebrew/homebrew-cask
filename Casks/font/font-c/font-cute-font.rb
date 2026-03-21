cask "font-cute-font" do
  version "1.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cutefont/CuteFont-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cute Font"
  homepage "https://fonts.google.com/specimen/Cute+Font"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cute Font",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CuteFont-Regular.ttf"

  # No zap stanza required
end
