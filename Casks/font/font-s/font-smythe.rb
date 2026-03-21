cask "font-smythe" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/smythe/Smythe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Smythe"
  homepage "https://fonts.google.com/specimen/Smythe"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Smythe",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Smythe-Regular.ttf"

  # No zap stanza required
end
