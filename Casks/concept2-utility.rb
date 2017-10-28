cask 'concept2-utility' do
  version '70802'
  sha256 :no_check

  url "http://software.concept2.com/utility/Concept2Utility#{version}.dmg"
  name 'Concept2 Utility'
  homepage 'http://www.concept2.com/service/software/concept2-utility'
  license :gratis

  app 'Concept2 Utility.app'
end
