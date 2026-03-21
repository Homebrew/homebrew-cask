cask "font-zen-loop" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zenloop"
  name "Zen Loop"
  homepage "https://fonts.google.com/specimen/Zen+Loop"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zen Loop",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZenLoop-Italic.ttf"
  font "ZenLoop-Regular.ttf"

  # No zap stanza required
end
