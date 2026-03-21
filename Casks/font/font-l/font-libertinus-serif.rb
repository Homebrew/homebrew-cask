cask "font-libertinus-serif" do
  version "7.051"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/libertinusserif"
  name "Libertinus Serif"
  homepage "https://fonts.google.com/specimen/Libertinus+Serif"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libertinus Serif",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibertinusSerif-Bold.ttf"
  font "LibertinusSerif-BoldItalic.ttf"
  font "LibertinusSerif-Italic.ttf"
  font "LibertinusSerif-Regular.ttf"
  font "LibertinusSerif-SemiBold.ttf"
  font "LibertinusSerif-SemiBoldItalic.ttf"

  # No zap stanza required
end
