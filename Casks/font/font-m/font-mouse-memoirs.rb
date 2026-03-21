cask "font-mouse-memoirs" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mousememoirs/MouseMemoirs-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mouse Memoirs"
  homepage "https://fonts.google.com/specimen/Mouse+Memoirs"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mouse Memoirs",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MouseMemoirs-Regular.ttf"

  # No zap stanza required
end
