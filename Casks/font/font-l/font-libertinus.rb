cask "font-libertinus" do
  version "7.051"
  sha256 "250677c929d3775a30913643594379af264ac2ef2801035aa1dcbe30b9be23a6"

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
