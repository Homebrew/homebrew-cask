cask "font-arsenal-sc" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arsenalsc"
  name "Arsenal SC"
  homepage "https://fonts.google.com/specimen/Arsenal+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arsenal SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ArsenalSC-Bold.ttf"
  font "ArsenalSC-BoldItalic.ttf"
  font "ArsenalSC-Italic.ttf"
  font "ArsenalSC-Regular.ttf"

  # No zap stanza required
end
