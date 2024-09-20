cask "font-libertinus" do
  version "7.050"
  sha256 "cbb54c4c482376eb17bb6397494489baacff0755d3864f9b5c772e2f3d43d429"

  url "https://github.com/alerque/libertinus/releases/download/v#{version}/Libertinus-#{version}.tar.zst"
  name "Libertinus"
  homepage "https://github.com/alerque/libertinus"

  font "Libertinus-#{version}/static/OTF/LibertinusKeyboard-Regular.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusMath-Regular.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusMono-Regular.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSans-Bold.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSans-Italic.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSans-Regular.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSerif-Bold.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSerif-BoldItalic.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSerif-Italic.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSerif-Regular.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSerif-Semibold.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSerif-SemiboldItalic.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSerifDisplay-Regular.otf"
  font "Libertinus-#{version}/static/OTF/LibertinusSerifInitials-Regular.otf"

  # No zap stanza required
end
