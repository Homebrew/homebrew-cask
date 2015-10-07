cask :v1 => 'graphicconverter' do
  version '9-2045'
  sha256 '0782f98ecdef5adfc4fb0ea5319be8b604bb364c6f486a01d0e6dfb19c28b39d'

  # lemkesoft.org is the official download host per the vendor homepage
  url "http://www.lemkesoft.org/files/graphicconverter/gc#{version.to_i}_build#{version.sub(%r{^\d-},'')}.dmg"
  appcast 'http://www.lemkesoft.org/files/graphicconverter/graphicconverter9.xml',
          :sha256 => '63b1831a84e840016bfa9649f7977b6629279e23a254f4e4e64a0bad0b785c1b'
  name 'GraphicConverter'
  homepage 'http://www.lemkesoft.de/en/products/graphicconverter/'
  license :commercial

  app "GraphicConverter #{version.to_i}.app"
end
