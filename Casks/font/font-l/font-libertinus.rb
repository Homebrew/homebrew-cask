cask "font-libertinus" do
  version "7.040"
  sha256 "7fe9f022722d1c1cc67dc2c28a110b3bb55bae3575196160d2422c89333b3850"

  url "https://github.com/alerque/libertinus/releases/download/v#{version}/Libertinus-#{version}.tar.xz"
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
