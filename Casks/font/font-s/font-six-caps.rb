cask "font-six-caps" do
  version "001.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sixcaps/SixCaps.ttf",
      verified: "github.com/google/fonts/"
  name "Six Caps"
  homepage "https://fonts.google.com/specimen/Six+Caps"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Six Caps",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SixCaps.ttf"

  # No zap stanza required
end
