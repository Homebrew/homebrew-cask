class GurpsCharacterSheet < Cask
  version '4.0.0'
  sha256 '67ccecc44d28f8cf104094ae988779b8219f79a6e6fbe9c695828034d3307816'

  url "http://downloads.sourceforge.net/project/gcs-java/gcs-#{version}-mac.zip"
  homepage 'http://gurpscharactersheet.com'

  link "gcs-#{version}-mac/GURPS Character Sheet.app"
end
