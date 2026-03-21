cask "font-zen-old-mincho" do
  version "1.500"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zenoldmincho"
  name "Zen Old Mincho"
  homepage "https://fonts.google.com/specimen/Zen+Old+Mincho"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zen Old Mincho",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZenOldMincho-Black.ttf"
  font "ZenOldMincho-Bold.ttf"
  font "ZenOldMincho-Medium.ttf"
  font "ZenOldMincho-Regular.ttf"
  font "ZenOldMincho-SemiBold.ttf"

  # No zap stanza required
end
