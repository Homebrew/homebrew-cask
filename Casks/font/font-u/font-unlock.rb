cask "font-unlock" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/unlock/Unlock-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Unlock"
  homepage "https://fonts.google.com/specimen/Unlock"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Unlock",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Unlock-Regular.ttf"

  # No zap stanza required
end
