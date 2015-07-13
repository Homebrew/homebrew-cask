cask :v1 => 'graphicconverter' do
  version '9-2045'
  sha256 '0782f98ecdef5adfc4fb0ea5319be8b604bb364c6f486a01d0e6dfb19c28b39d'

  # lemkesoft.org is the official download host per the vendor homepage
  url "http://www.lemkesoft.org/files/graphicconverter/gc#{version.to_i}_build#{version.sub(%r{^\d-},'')}.dmg"
  appcast 'http://www.lemkesoft.org/files/graphicconverter/graphicconverter9.xml',
          :sha256 => '727b14e6a9a5e34792bbcf49ce4e088eeab4e665c73d756aac62fa1c9f24a397'
  name 'GraphicConverter'
  homepage 'http://www.lemkesoft.de/en/products/graphicconverter/'
  license :commercial

  app "GraphicConverter #{version.to_i}.app"
end
